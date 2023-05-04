# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Create database](#create-database)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [🖼️ UML class diagram](#UML-class-diagram)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Catalog of things <a name="about-project"></a>

**Catalog of things** creates a console app that helps users keep track of their books, music albums, movies, and games. The program is based on the UML class diagram. The data is stored in JSON files, and a database is configured with a table structure analogous to the program's class structure..

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="">N/A</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- Add new music albums
- Add new books

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy of this project and run it in your computer, follow these steps.

### Prerequisites

In order to run this project you need:

- [Ruby](https://www.ruby-lang.org/en/) installed and running
- [PostgreSQL server](https://www.postgresql.org/download/) installed and running
- [psql](https://www.postgresql.org/docs/current/app-psql.html) installed

### Setup

To get a local copy up and running follow these simple example steps.

Clone this repository in the desired folder:

```
cd my-folder
git clone https://github.com/JakariaJishan/Catalog-of-things.git
cd catalog-of-things
code .
```

### Install

To install this project:

```
gem install ruby
gem install rspec
bundle install
```

### Create database

1. Connect to your PostgreSQL server with `psql`
```
> psql
postgres=#
```

2. Create the database `catalog_things`
```
postgres=# CREATE DATABASE catalog_things;
CREATE DATABASE
```

3. Connect to your database catalog_things. Inside your current session do:
```
postgres=# \c catalog_things
You are now connected to database "catalog_things" as user "postgres".
catalog_things=#
```

That's it! Congratulations, you have created your database and connected to it. Next, we will add a table.

- Use [schema.sql](./sql/schema.sql) to create all tables.

### Usage

To run the project, execute the following command in Bash:

```
ruby main.rb
```

### Run Tests

To run the project tests, execute the following command:

```
rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## UML class diagram
![Schema Diagram soom](./img/UML_class_diagram.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Jakaria Jishan**

- GitHub: [@jakaria](https://github.com/JakariaJishan)
- Twitter: [@jakaria](https://twitter.com/jakariajishan)
- LinkedIn: [jakaria](https://www.linkedin.com/in/jakariajishan/)

👤 **Vanessa Oliveros Padron**

- GitHub: [@vvoo21](https://github.com/vvoo21)
- Twitter: [@vaneoliverosp](https://twitter.com/vaneoliverosp)
- LinkedIn: [vaneoliverosp](https://www.linkedin.com/in/vaneoliverosp/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Insert new data

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a start if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank the Microverse program!
- I would like to thank my coding partner to aid this project's development.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
