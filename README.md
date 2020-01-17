# Re-Former

This repository is meant to be a "gossip" site, in which members can "complain" about people.

## Getting started

Clone the repository with:

```bash
git clone https://github.com/chincoya/members-only
```

Then change to the repository directory, with

```bash
 cd members-only/
```
Use the Rails specific Bash command
```bash
bundle install
```
to install missing gems and packages needed -as specified inside the gemfile and yarn.lock. Afterwards, run the database migration with:

```bash
rails db:migrate
```

If you followed the steps correctly, you should be able to run the Rails server with the command:
```bash
rails server
```
## Users, Posts and comments
Users are created in the url

**"/users/new"**

## Comments
Comments are created in the url
**"/comments/new"**

## Dependencies

This project uses 
- Ruby v2.6.3
- Ruby on Rails v6.0.1

For its building. Other dependencies are listed in the Gemfile, located inside the root directory.  

### Authors

- Roberto Erik Nava  | [Github](https://github.com/Oitur/)
- Daniel Chincoya    | [@chincoya7](https://twitter.com/chincoya7)