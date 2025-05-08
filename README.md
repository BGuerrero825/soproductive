# SOPRODUCTIVE
---
So it turns out, if the git user.email on your remote is not the same as your GitHub email, your commits aren't attributed to your account and therefore you don't get internet karma points on your contribution chart.
This tool solves this grave issue by creating tons of random contributions to this repo, making your contribution chart completely meaningless, but also super productive looking to anybody shallowly browsing your profile!

### Instructions
1. Clone this repo
2. Add the following line to /etc/crontab or run `crontab -e`: `*/7 * * * *  USER   PATH/soproductive/make_commit.sh`
  - Of course, with the ALL_CAPS values removed
  - This will run the included script every 7 minutes
3. Change the permissions of make_commit.sh to be executable from the USER context: `chmod +x make_commit.sh`


### Changelog

