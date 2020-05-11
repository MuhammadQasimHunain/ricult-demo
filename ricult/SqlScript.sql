USE [ricult_exercise]
GO
/****** Object:  Table [dbo].[crop_cycles]    Script Date: 5/9/2020 12:24:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crop_cycles](
	[region] [varchar](180) NULL,
	[country] [varchar](180) NULL,
	[village] [varchar](180) NULL,
	[full_name] [varchar](120) NULL,
	[organization] [varchar](180) NULL,
	[district] [varchar](118) NULL,
	[town] [varchar](118) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[farm_id] [int] NULL,
	[farmer_id] [int] NULL,
	[sowing_date] [date] NULL,
	[harvest_date] [date] NULL,
	[credit_start] [date] NULL,
	[credit_finish] [date] NULL,
	[soil_nitrogen] [float] NULL,
	[soil_nitrogen_rate] [varchar](82) NULL,
	[soil_organic_matter] [float] NULL,
	[soil_organic_matter_rate] [varchar](82) NULL,
	[soil_ph] [float] NULL,
	[soil_ph_rate] [varchar](82) NULL,
	[soil_phosphorus] [float] NULL,
	[soil_phosphorus_rate] [varchar](82) NULL,
	[soil_potash] [float] NULL,
	[soil_potash_rate] [varchar](82) NULL,
	[water_ect] [float] NULL,
	[water_ect_rate] [varchar](82) NULL,
	[soil_type] [varchar](82) NULL,
	[seed_type] [varchar](82) NULL,
	[crop_type] [varchar](82) NULL,
	[area] [int] NULL,
	[coordinates] [varchar](max) NULL,
	[national_id] [varchar](20) NULL,
	[loan] [int] NULL,
	[loan_status] [smallint] NULL,
	[delivery_schedule] [varchar](max) NULL,
	[historical_inputs] [varchar](max) NULL,
	[credit_performance] [varchar](max) NULL,
	[income_sources] [varchar](max) NULL,
	[assets] [varchar](max) NULL,
	[agent_feedback] [varchar](max) NULL,
	[credit_requirements] [varchar](max) NULL,
	[status] [varchar](82) NULL,
	[ost] [varchar](max) NULL,
	[oht] [varchar](max) NULL,
	[frost] [varchar](max) NULL,
	[frost_date] [date] NULL,
	[heat] [varchar](max) NULL,
	[heat_date] [date] NULL,
	[fog] [varchar](max) NULL,
	[fog_date] [date] NULL,
	[rain] [varchar](max) NULL,
	[rain_date] [date] NULL,
	[wind] [varchar](max) NULL,
	[wind_date] [date] NULL,
	[irrigation] [varchar](max) NULL,
	[irrigation_date] [date] NULL,
	[ndvi] [varchar](max) NULL,
	[ndvi_date] [date] NULL,
	[fertilizer] [varchar](max) NULL,
	[fertilizer_date] [date] NULL,
	[pest] [varchar](max) NULL,
	[pest_date] [date] NULL,
	[phone_number] [varchar](30) NULL,
	[awhere_id] [varchar](24) NULL,
	[date_created] [date] NULL,
	[first_name] [varchar](60) NULL,
	[last_name] [varchar](60) NULL,
	[other_sown_coordinates] [varchar](max) NULL,
	[other_sown_date] [date] NULL,
	[activated] [smallint] NULL,
	[grow_num] [smallint] NULL,
	[score] [int] NULL,
	[state] [int] NULL,
	[stage] [varchar](100) NULL,
	[est_harvest_date] [date] NULL,
	[estimated_yield] [float] NULL,
	[performance] [smallint] NULL,
	[yield_qty] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farms]    Script Date: 5/9/2020 12:24:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farms](
	[region] [varchar](180) NULL,
	[country] [varchar](180) NULL,
	[village] [varchar](180) NULL,
	[full_name] [varchar](120) NULL,
	[organization] [varchar](180) NULL,
	[district] [varchar](118) NULL,
	[town] [varchar](118) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[farmer_id] [int] NULL,
	[farm_name] [varchar](255) NULL,
	[awhere_id] [varchar](24) NULL,
	[area] [int] NULL,
	[coordinates] [varchar](max) NULL,
	[national_id] [varchar](20) NULL,
	[current_awhere_id] [varchar](24) NULL,
	[phone_number] [varchar](30) NULL,
	[soil_type] [varchar](255) NULL,
	[date_created] [date] NULL,
	[activated] [smallint] NULL,
	[first_name] [varchar](60) NULL,
	[last_name] [varchar](60) NULL,
	[valid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/9/2020 12:24:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[region] [varchar](180) NULL,
	[country] [varchar](180) NULL,
	[village] [varchar](180) NULL,
	[full_name] [varchar](120) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](80) NULL,
	[password_hash] [varchar](128) NULL,
	[email] [varchar](120) NULL,
	[phone_number] [varchar](30) NULL,
	[home_address] [varchar](180) NULL,
	[date_of_birth] [date] NULL,
	[father_name] [varchar](180) NULL,
	[user_type] [varchar](20) NULL,
	[hidden] [smallint] NULL,
	[organization] [varchar](180) NULL,
	[district] [varchar](118) NULL,
	[town] [varchar](118) NULL,
	[national_id] [varchar](20) NULL,
	[farmer_user_id] [varchar](20) NULL,
	[securrency] [smallint] NULL,
	[photo_url] [varchar](512) NULL,
	[phone_id] [varchar](512) NULL,
	[eula] [smallint] NULL,
	[bank] [varchar](512) NULL,
	[account] [varchar](512) NULL,
	[car] [smallint] NULL,
	[authenticated] [smallint] NULL,
	[signup_time] [datetime2](0) NULL,
	[cellphone] [smallint] NULL,
	[first_name] [varchar](60) NULL,
	[last_name] [varchar](60) NULL,
	[dtac_subscription_type] [int] NULL,
	[send_sms] [smallint] NULL,
	[past_loan] [smallint] NULL,
	[loan_interest] [smallint] NULL,
	[past_loan_bank] [varchar](512) NULL,
	[loan_amount] [float] NULL,
	[associate] [varchar](512) NULL,
	[permission_code] [int] NULL,
	[facebook_id] [varchar](512) NULL,
	[send_otp] [smallint] NOT NULL,
	[segment] [varchar](512) NULL,
	[organization_user_type] [varchar](512) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[crop_cycles] ON 

INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Tak', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mueang Tak', N'Nong Bua Nuea', 1, 1, 1, CAST(N'2019-12-19' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rice', 6373, N'[[16.943418363675264, 99.07564560433333], [16.94288134510187, 99.07536315193207], [16.94358751926194, 99.0746233659346], [16.944000138817515, 99.07497294625685]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77869948768', NULL, CAST(N'2020-01-05' AS Date), N'????????', N'????', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Ubon Ratchathani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Trakan Phuet Phon', N'Trakan', 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rubber', 97, N'[[15.587126404812661, 105.18310155786475], [15.587140594920639, 105.18199808213859], [15.58715535880277, 105.18199961470083]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77985885658', NULL, CAST(N'2020-01-05' AS Date), N'Kritsupin', N'Doungprasat', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Ubon Ratchathani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Trakan Phuet Phon', N'Trakan', 3, 3, 3, CAST(N'2019-03-04' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Cassava', 3392, N'[[15.587126404812661, 105.18310155786475], [15.587140594920639, 105.18199808213859], [15.58715535880277, 105.18199961470083], [15.586675215759689, 105.18003470965247], [15.586675215759689, 105.18003470965247]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77985885658', NULL, CAST(N'2020-01-05' AS Date), N'Kritsupin', N'Doungprasat', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Tak', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mueang Tak', N'Nong Bua Nuea', 4, 4, 4, CAST(N'2019-12-19' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rice', 8850, N'[[16.943678455900507, 99.07460171777142], [16.944098903480484, 99.07497552609384], [16.943615028166505, 99.07597374511876], [16.942974560661415, 99.07570195716258]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77869948768', NULL, CAST(N'2020-01-05' AS Date), N'????????', N'????', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Chiang Mai', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mae Ai', N'Mae Ai', 5, 5, 5, CAST(N'2020-01-04' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Another Crop', 7599, N'[[20.032939262680568, 99.28004020448458], [20.033355422457998, 99.27948174703081], [20.034140059205896, 99.27994456756599], [20.034037645255907, 99.28038303605311], [20.03385562557913, 99.28047269462596]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77646886889', NULL, CAST(N'2020-01-05' AS Date), N'Light', N'North', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Tak', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mueang Tak', N'Nong Bua Nuea', 6, 6, 6, CAST(N'2020-12-19' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rice', 8850, N'[[16.943678455900507, 99.07460171777142], [16.944098903480484, 99.07497552609384], [16.943615028166505, 99.07597374511876], [16.942974560661415, 99.07570195716258]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77869948768', NULL, CAST(N'2020-01-05' AS Date), N'????????', N'????', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Surin', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mueang Surin', N'Mueang Surin', 7, 7, 7, CAST(N'2019-12-26' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rice', 6684, N'[[14.859948945776535, 103.38904016400966], [14.859438423986841, 103.38775451936408], [14.859054614776543, 103.3878309849246], [14.859590639842832, 103.38921106928663], [14.859590639842832, 103.38921106928663]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77807884590', NULL, CAST(N'2020-01-05' AS Date), N'??????', N'?????????', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Surin', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mueang Surin', N'Mueang Surin', 8, 8, 8, CAST(N'2019-12-26' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rice', 4656, N'[[14.859922043100207, 103.38900944702462], [14.859540078453042, 103.38800850243437], [14.859177739950164, 103.38805565711593], [14.859623208544571, 103.38916182833515]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77807884590', NULL, CAST(N'2020-01-05' AS Date), N'??????', N'?????????', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Kanchanaburi', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Tha Maka', N'Tha Ruea', 9, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'None', 17827, N'[[13.984001084211815, 99.7596827489229], [13.982927551162001, 99.75936750096076], [13.981705298170558, 99.75912795851448], [13.981719874102797, 99.7584820654136], [13.984023413657994, 99.75898889352712], [13.984001170150492, 99.75964498994463]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77804984359', NULL, CAST(N'2020-01-05' AS Date), N'???', N'??????', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (N'Surin', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Mueang Surin', N'Mueang Surin', 10, 10, 10, CAST(N'2019-12-26' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Rice', 6041, N'[[14.859953727419354, 103.38902470258304], [14.859547794880607, 103.38796290806157], [14.859485561383414, 103.38775835419733], [14.85909977955472, 103.38785284517716], [14.85960160242056, 103.38912136687465]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77807884590', NULL, CAST(N'2020-01-05' AS Date), N'??????', N'?????????', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[crop_cycles] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farm_id], [farmer_id], [sowing_date], [harvest_date], [credit_start], [credit_finish], [soil_nitrogen], [soil_nitrogen_rate], [soil_organic_matter], [soil_organic_matter_rate], [soil_ph], [soil_ph_rate], [soil_phosphorus], [soil_phosphorus_rate], [soil_potash], [soil_potash_rate], [water_ect], [water_ect_rate], [soil_type], [seed_type], [crop_type], [area], [coordinates], [national_id], [loan], [loan_status], [delivery_schedule], [historical_inputs], [credit_performance], [income_sources], [assets], [agent_feedback], [credit_requirements], [status], [ost], [oht], [frost], [frost_date], [heat], [heat_date], [fog], [fog_date], [rain], [rain_date], [wind], [wind_date], [irrigation], [irrigation_date], [ndvi], [ndvi_date], [fertilizer], [fertilizer_date], [pest], [pest_date], [phone_number], [awhere_id], [date_created], [first_name], [last_name], [other_sown_coordinates], [other_sown_date], [activated], [grow_num], [score], [state], [stage], [est_harvest_date], [estimated_yield], [performance], [yield_qty]) VALUES (NULL, N'Thailand', NULL, NULL, N'ricult-th-fbauto', NULL, NULL, 11, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Sugarcane', 12515, N'[[15.136565137216245, 104.01579929254927], [15.136038312520192, 104.0158207502214], [15.136137767366467, 104.01547223969152], [15.138355085867264, 104.0162032398735], [15.140043908141939, 104.01659663050174], [15.139995334503228, 104.0167900019083], [15.136006105712028, 104.01586223682406]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'77998646855', NULL, CAST(N'2020-01-05' AS Date), N'??????????', N'???????', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[crop_cycles] OFF
SET IDENTITY_INSERT [dbo].[farms] ON 

INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Roi Et', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Chaturaphak Phiman', N'Dong Daeng', 1, 1, N'????????3', NULL, 5223, N'[[15.833275622463297, 103.6395892275033], [15.833234875553726, 103.63976131124959], [15.832336865533042, 103.6398262372751], [15.831862431290116, 103.63976195364388], [15.831786779457463, 103.64005336038018], [15.832648906658644, 103.64003582727537], [15.833586017938266, 103.64006642309845], [15.833306092545543, 103.63966041773357]]', NULL, NULL, N'77951683488', NULL, CAST(N'2019-12-29' AS Date), 1, N'????', N'???????????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Ubon Ratchathani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Na Chaluai', N'Na Chaluai', 2, 2, N'???? 4', NULL, 47797, N'[[14.899882027191623, 104.77518370483054], [14.89954388517519, 104.77555319802529], [14.89485169847683, 104.77511979610159], [14.89477840896781, 104.77409365980841], [14.89634470946441, 104.77432369256945], [14.89733513084452, 104.77441708590311], [14.897827672758876, 104.77460120791555]]', NULL, NULL, N'77879688617', NULL, CAST(N'2019-12-29' AS Date), 1, N'??????', N'????????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Ubon Ratchathani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Na Chaluai', N'Na Chaluai', 3, 3, N'???? 5', NULL, 34441, N'[[14.909352996738926, 104.76055178274302], [14.910028233761823, 104.76061255881125], [14.910337590146053, 104.76067014476189], [14.910985403989363, 104.76065144854272], [14.911202061409332, 104.76055946320788], [14.911319628049108, 104.76007969510232], [14.911415004177108, 104.75978850162211], [14.911504110071817, 104.75961393656574], [14.911551269163118, 104.75932346503788], [14.911531438066637, 104.75919481984994], [14.91147658933346, 104.75913645361841], [14.91124470453703, 104.75897452187935], [14.91099574804059, 104.75886649306274], [14.910408851901659, 104.75859350317432], [14.910299341758806, 104.75884548342415], [14.910280704010006, 104.75895317111376], [14.910288368236003, 104.75929206028049], [14.91027320790085, 104.75956829112808], [14.909548610278021, 104.75957939023539]]', NULL, NULL, N'77879688617', NULL, CAST(N'2019-12-29' AS Date), 1, N'??????', N'????????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Nong Khai', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Si Chiang Mai', N'Phan Phrao', 4, 4, N'???? 1', NULL, 50049, N'[[17.942336646640396, 102.56982409131994], [17.94053192452295, 102.56920356688607], [17.940413703221946, 102.56958699904365], [17.939980545366964, 102.56930180945564], [17.94059518492361, 102.56710934637034], [17.942227543990793, 102.56783261529486], [17.94191244859419, 102.56854093683792], [17.942619452496817, 102.56880001304769], [17.942647844981447, 102.56887800827272], [17.942609620348986, 102.56908108638169], [17.942336813335327, 102.56982347259783]]', NULL, NULL, N'77656855998', NULL, CAST(N'2019-12-29' AS Date), 0, N'??????', N'??????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Nong Khai', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Si Chiang Mai', N'Phan Phrao', 5, 5, N'???? 2', NULL, 56602, N'[[17.942334817792155, 102.5698149763819], [17.940542958711514, 102.56921751164231], [17.940418858043277, 102.5695936744962], [17.93998600909791, 102.56930636840534], [17.940457893151052, 102.56748334100824], [17.939547844143952, 102.56709689943622], [17.93968972126467, 102.5665641584228], [17.940658577056936, 102.56709888044226], [17.942237466068462, 102.5678273835023], [17.94189107938901, 102.56854654511736], [17.942624212433824, 102.56881236443827], [17.94264819450465, 102.56888722695598], [17.94261880895219, 102.56903346526448], [17.942336424419622, 102.56981468795802]]', NULL, NULL, N'77656855998', NULL, CAST(N'2019-12-29' AS Date), 0, N'??????', N'??????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Nong Khai', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Si Chiang Mai', N'Phan Phrao', 6, 6, N'??????  ??????', NULL, 56602, N'[[17.942334817792155, 102.5698149763819], [17.940542958711514, 102.56921751164231], [17.940418858043277, 102.5695936744962], [17.93998600909791, 102.56930636840534], [17.940457893151052, 102.56748334100824], [17.939547844143952, 102.56709689943622], [17.93968972126467, 102.5665641584228], [17.940658577056936, 102.56709888044226], [17.942237466068462, 102.5678273835023], [17.94189107938901, 102.56854654511736], [17.942624212433824, 102.56881236443827], [17.94264819450465, 102.56888722695598], [17.94261880895219, 102.56903346526448], [17.942336424419622, 102.56981468795802]]', NULL, NULL, N'77656855998', NULL, CAST(N'2019-12-29' AS Date), 1, N'??????', N'??????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Udon Thani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Si That', N'Hua Na Kham', 7, 7, N'??????????????', NULL, 10567, N'[[17.02458936887376, 103.2196602465367], [17.024248928296892, 103.21867154440382], [17.02375838454818, 103.21854562018025], [17.023277867693984, 103.21952021156417]]', NULL, NULL, N'77883199156', NULL, CAST(N'2019-12-29' AS Date), 1, N'??????', N'????????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Ubon Ratchathani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Det Udom', N'Mueang Det', 8, 8, N'???? 5', NULL, 730, N'[[14.907434733548458, 105.02883640468515], [14.907767557821405, 105.02898787766736], [14.907706493981566, 105.02914176835675], [14.90736889982925, 105.02897681301604], [14.90741828282199, 105.02881846403535]]', NULL, NULL, N'77645896683', NULL, CAST(N'2019-12-29' AS Date), 0, N'??????', N'?????????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Surin', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Sikhoraphum', N'Trom Phrai', 9, 9, N'????????', NULL, 8041, N'[[14.863976436417788, 103.7733538536217], [14.864850882437832, 103.77367035428546], [14.865128748919538, 103.7729063719226], [14.864219861785573, 103.77274758880179]]', NULL, NULL, N'77844558471', NULL, CAST(N'2019-12-29' AS Date), 1, N'??????', N'????????', NULL)
INSERT [dbo].[farms] ([region], [country], [village], [full_name], [organization], [district], [town], [id], [farmer_id], [farm_name], [awhere_id], [area], [coordinates], [national_id], [current_awhere_id], [phone_number], [soil_type], [date_created], [activated], [first_name], [last_name], [valid]) VALUES (N'Ubon Ratchathani', N'Thailand', NULL, NULL, N'ricult-th-fbauto', N'Det Udom', N'Mueang Det', 10, 10, N'???? 6', NULL, 18323, N'[[14.906100410886738, 105.02925909554027], [14.90612960533337, 105.02899748596747], [14.905912209414725, 105.02896585269566], [14.905986452192595, 105.02865149940587], [14.906163529886651, 105.0286865625957], [14.906245949382635, 105.02842501988653], [14.906076869721018, 105.02834139254536], [14.906260835718943, 105.02789329675949], [14.90663159068436, 105.0279761780376], [14.907360187339627, 105.0280611598155], [14.907586467761911, 105.02812582793136], [14.907157359656699, 105.02922898659962], [14.906650921408522, 105.02902470971513], [14.90657480865265, 105.02906802082182], [14.906509974619345, 105.02932346297246], [14.906108485271291, 105.02924730219978]]', NULL, NULL, N'77645896683', NULL, CAST(N'2019-12-29' AS Date), 1, N'??????', N'?????????', NULL)
SET IDENTITY_INSERT [dbo].[farms] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (N'Uthai Thani', N'Thailand', NULL, NULL, 1, NULL, NULL, NULL, N'77947865018', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', N'Ban Rai', N'Ban Rai', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T07:51:28.0000000' AS DateTime2), 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (N'Uthai Thani', N'Thailand', NULL, NULL, 41, N'uthani', NULL, NULL, N'77947865018', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', N'Ban Rai', N'Ban Rai', N'1', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T07:51:28.0000000' AS DateTime2), 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 42, N'User a', NULL, NULL, N'77943841096', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'2', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T07:52:36.0000000' AS DateTime2), 0, N'?????', N'?????????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 43, N'User b', NULL, NULL, N'77848673803', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'3', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T07:53:31.0000000' AS DateTime2), 0, N'??????', N'??????????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 44, N'User c', NULL, NULL, N'77889175389', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'4', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T08:13:43.0000000' AS DateTime2), 0, N'???????', N'??????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 45, N'User d', NULL, NULL, N'77654815388', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'5', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T09:03:01.0000000' AS DateTime2), 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 46, N'User e', NULL, NULL, N'77871664180', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'6', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T09:31:17.0000000' AS DateTime2), 0, N'???????', N'???????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (N'Chaiyaphum', N'Thailand', NULL, NULL, 47, N'User f', NULL, NULL, N'77864955868', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', N'Sap Yai', N'Sap Yai', N'7', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T09:37:37.0000000' AS DateTime2), 0, N'????', N'????????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 48, N'User g', NULL, NULL, N'77994087106', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'8', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T10:02:13.0000000' AS DateTime2), 0, N'????', N'?????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 49, N'User h', NULL, NULL, N'77896353108', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'9', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T10:02:32.0000000' AS DateTime2), 0, N'?????', N'??????????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[users] ([region], [country], [village], [full_name], [id], [username], [password_hash], [email], [phone_number], [home_address], [date_of_birth], [father_name], [user_type], [hidden], [organization], [district], [town], [national_id], [farmer_user_id], [securrency], [photo_url], [phone_id], [eula], [bank], [account], [car], [authenticated], [signup_time], [cellphone], [first_name], [last_name], [dtac_subscription_type], [send_sms], [past_loan], [loan_interest], [past_loan_bank], [loan_amount], [associate], [permission_code], [facebook_id], [send_otp], [segment], [organization_user_type]) VALUES (NULL, N'Thailand', NULL, NULL, 50, N'User i', NULL, NULL, N'77681897867', NULL, NULL, NULL, N'farmer', 0, N'ricult-th-fbauto', NULL, NULL, N'10', NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(N'2019-12-24T10:22:31.0000000' AS DateTime2), 0, N'??????', N'????????????', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [national_id]    Script Date: 5/9/2020 12:24:51 AM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [national_id] UNIQUE NONCLUSTERED 
(
	[national_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [username]    Script Date: 5/9/2020 12:24:51 AM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [country]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [village]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [full_name]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [organization]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [district]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [town]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [farm_id]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [farmer_id]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [sowing_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [harvest_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [credit_start]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [credit_finish]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_nitrogen]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_nitrogen_rate]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_organic_matter]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_organic_matter_rate]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_ph]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_ph_rate]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_phosphorus]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_phosphorus_rate]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_potash]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_potash_rate]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [water_ect]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [water_ect_rate]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [soil_type]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [seed_type]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [crop_type]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [area]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [national_id]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [loan]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [loan_status]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [frost_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [heat_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [fog_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [rain_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [wind_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [irrigation_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [ndvi_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [fertilizer_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [pest_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [phone_number]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [awhere_id]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [date_created]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [first_name]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [last_name]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [other_sown_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT ('1') FOR [activated]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [grow_num]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [score]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [stage]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [est_harvest_date]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [estimated_yield]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [performance]
GO
ALTER TABLE [dbo].[crop_cycles] ADD  DEFAULT (NULL) FOR [yield_qty]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [country]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [village]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [full_name]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [organization]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [district]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [town]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [farmer_id]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [farm_name]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [awhere_id]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [area]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [national_id]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [current_awhere_id]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [phone_number]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [soil_type]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [date_created]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [activated]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [first_name]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [last_name]
GO
ALTER TABLE [dbo].[farms] ADD  DEFAULT (NULL) FOR [valid]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [country]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [village]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [full_name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [password_hash]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [phone_number]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [home_address]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [date_of_birth]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [father_name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [user_type]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [hidden]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [organization]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [district]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [town]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [national_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [farmer_user_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [securrency]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [photo_url]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [phone_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [eula]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [bank]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [account]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [car]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [authenticated]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [signup_time]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [cellphone]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [first_name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [dtac_subscription_type]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [send_sms]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [past_loan]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [loan_interest]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [past_loan_bank]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [loan_amount]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [associate]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [permission_code]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [facebook_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('1') FOR [send_otp]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [segment]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [organization_user_type]
GO


alter PROCEDURE SearchFarms
@RegionProvince [varchar](180) = null, 
@national_id [varchar](180) = null, 
@first_name [varchar](180) = null, 
@last_name [varchar](180) = null, 
@country [varchar](180) = null, 
@crop_type [varchar](180) = null, 
@sowing_start_date date = null, 
@sowing_end_date date = null, 
@harvest_start_date date = null, 
@harvest_end_date date = null,
@farm_size_start int = null, 
@farm_size_end int = null, 
@farm_state [varchar](180) = null, 
@farm_ranking [varchar](180) = null
AS

SELECT
    f.region as 'FarmRegion',
	f.national_id as 'national_id',
	u.first_name as 'FirstName',
	u.last_name as 'LastName',
	u.country as 'UserCountry',
	c.crop_type as 'CropType',
	c.sowing_date as 'SowingDate',
	c.harvest_date as 'HarvestDate',
	f.current_awhere_id as 'FarmSize',
	f.district as 'FarmState',
	f.awhere_id as 'FarmRanking',
	u.village as 'Village',
	u.email as 'Email'
FROM
    users u
JOIN farms f 
    ON u.id = f.farmer_id
left join crop_cycles c
	ON c.farmer_id = u.id
	OR c.farm_id = f.id
where
	(f.region like '%'+@RegionProvince+'%' OR @RegionProvince IS NULL)
	AND (f.national_id like '%'+@national_id+'%' OR @national_id IS NULL)
	AND (f.first_name like '%'+@first_name+'%' OR @first_name IS NULL)
	AND (f.last_name like '%'+@last_name+'%' OR @last_name IS NULL)
	AND (u.country like '%'+@country+'%' OR @country IS NULL)
	AND (c.crop_type like '%'+@crop_type+'%' OR @crop_type IS NULL)



