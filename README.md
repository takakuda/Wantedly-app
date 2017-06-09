# DB設計

##users table (campany)
|     colum     |     type      |               option               |
|:--------------|--------------:|:----------------------------------:|
|name           |string         |index: true,null: false,unique: true|
|user_id        |references     |                                    |


## Association
- ・has_many :recruitments



## user table (recruit)
|     colum     |     type      |               option               |
|:--------------|--------------:|:----------------------------------:|
|name           |string         |               option               |
|user_id        |references     |                                    |


## Association
- ・has_many :applies



## campanies table
|     colum     |     type      |              option                |
|:--------------|--------------:|:----------------------------------:|
|name           |string         |index: true,null: false,unique: true|
|campany_id     |references     |


## Association
- ・has_many :recruitments


## recruitments table
|     colum     |     type      |              option                |
|:--------------|--------------:|:----------------------------------:|
|body           |text           |null: false                         |
|image          |file           |                                    |
|recruitment_id |references     |foreign_key: true                   |


## Association
- ・belongs_to :campany
- ・has_many :applications, through :recruitment_applies


## applies table
|     colum     |     type      |              option                |
|:--------------|--------------:|:----------------------------------:|
|application_id |references     |foreign_key: true                   |
|body           |text           |                                    |



## Association
- ・belongs_to :user
- ・has_many :recuritments, through :recruitment_applies


## recruitment_applications table
|     colum     |     type      |              option                |
|:--------------|--------------:|:----------------------------------:|
|recruitment_id |references     |foreign_key: true                   |
|application_id |references     |foreign_key: true                   |


