# DB設計

##users table
|     colum     |     type      |               option               |
|:--------------|--------------:|:----------------------------------:|
|name           |string         |index: true,null: false,unique: true|
|user_id        |references     |                                    |


## Association
- ・has_many :applications


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
- ・has_many :applications, through :recruitment_applications


## applications table
|     colum     |     type      |              option                |
|:--------------|--------------:|:----------------------------------:|
|application_id |references     |foreign_key: true                   |
|body           |text           |                                    |



## Association
- ・belongs_to :user
- ・has_many :recuritments, through :recruitment_applications


## recruitment_applications table
|     colum     |     type      |              option                |
|:--------------|--------------:|:----------------------------------:|
|recruitment_id |references     |foreign_key: true                   |
|application_id |references     |foreign_key: true                   |


