# Professional Portfolio

Professional Portfolio is a basic API built with ruby's Sinatra DSL. 

This project is a server side application which contains users data i.e. the users personal details such as full name ,email,password and education level. Each user has skills and projects.

There are two models of one-to-many relationship. One user has many skills and projects as displayed in the ERD diagram below

 ![ERD DIAGRAM](./user-skill-project-ERD.png?raw=true "ERD DIAGRAM")

Below is a link to the frontend application built using this API.


   https://github.com/Lorraineken/professional-portfolio-react-app
   

## Pre-Requisites
In order to use this repository you will need the following:

- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
The tools used to build this application are indicated in the Gemfile.
The ruby version used is:

- **Ruby `v2.7.+`**


## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone https://github.com/Lorraineken/phase3-professional-portfolio-project
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Run the application
    ```{shell}
    rackup config.ru
    ```
4. Open the application from your browser
    ```
   https://localhost:9292
   ```
   
## Application
This application is a simple web API that allows users to:
- Create skill and project.
- Update a skills attribute or project attribute.
- View all skills and projects.
- Delete a skill or a project.


The following routes are ready for use:
1. `/login` - Allows users to login.
2. `/users/create` - Allows creating of new users
3. `/projects/create` - Allow creation of new projects
4. `/skills/create` - Allow creation of new skills 
5. `/projects` - displays all created projects
6. `/skills` - displays all created skills
7. `/users` - displays all created users
8. `/projects/update/:id` - updates a project
9. `/skills/update/:id` - updates a skill
10. `/skills/destroy/:id` - deletes a skill
11. `/projects/destroy/:id` - deletes a project


## LICENSE
This repository is distributed under the MIT License

```markdown
Copyright 2023 Lorraine Kupa

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

## Author
This repository is maintained by:

- [Lorraine Kupa](https://github.com/Lorraineken) 