import { Component, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Component({
  selector: 'app-fetch-data',
  templateUrl: './fetch-data.component.html'
})
export class FetchDataComponent {
  public resultData: PageItems[];
  public model: SearchViewModel;
  public Http: HttpClient;
  public url: string;
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': 'my-auth-token'
    })
  };
  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this.model = new SearchViewModel();
    this.Http = http;
    this.url = baseUrl;
    http.get<PageItems[]>(this.url + 'api/Data/GetItems')
      .subscribe(result => {
        this.resultData = result;
      },
        error => console.error(error));

  }

  reset() {
    this.model = new SearchViewModel();
    this.SearchList(this.model);
  }

  SearchView() {
    this.SearchList(this.model);
  }
  SearchList(search: SearchViewModel): Observable<PageItems[]> {
    this.resultData = null;
    return (this.Http.post<PageItems[]>(this.url + 'api/Data/GetItemPost',
      this.model,
      this.httpOptions)
      .subscribe(result => {
          this.resultData = result;
        },
        error => console.error(error))) as any;
  }
}

class SearchViewModel {
  regionProvince: string;
  nationalId: string;
  firstName: string;
  lastName: string;
  country: string;
  cropType: string;
  sowingStartDate: Date;
  sowingEndDate: Date;
  harvestStartDate: Date;
  harvestEndDate: Date;
  farmSizeStart: number;
  farmSizeEnd: number;
  farmState: string;
  village: number;
}

interface PageItems {
  region: string;
  nationalId: string;
  firstName: string;
  lastName: string;
  country: string;
  cropType: string;
  sowingDate: Date;
  harvestDate: Date;
  farmSize: number;
  farmState: string;
  farmRanking: number;
  village: string;
  email: string;
}
