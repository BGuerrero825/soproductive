# SOPRODUCTIVE
---
So it turns out, if the git user.email on your remote is not the same as your GitHub email, your commits aren't attributed to your account and therefore you don't get internet karma points from your contribution chart.
Also applicable if you work on closed source repos. :)

This tool solves this grave issue by creating tons of random contributions to this repo, making your contribution chart completely meaningless, but also super productive looking to anybody shallowly browsing your profile!

### Setup
0. Linux
1. Clone this repo
2. Add the following line to /etc/crontab or run `crontab -e`: `*/3 8-22 * * *  USER   PATH/soproductive/make_commit.sh`
  - Of course, with the ALL_CAPS values substituted 
  - This will run the included script approximately every 3 minutes between the hours of 0800-2200
3. Change the permissions of make_commit.sh to be executable from the USER context: `chmod +x make_commit.sh`
4. Make any necessary path changes to make_commit.sh for your environment
5. Make a file called src.c with lots of text. It's contents will be copied into target.c (I guess you could use a link to /dev/urandom too)
6. Clear out the contents of target.c for a fresh target!

### Changelog

