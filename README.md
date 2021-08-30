
# Repos

Collection of my GitHub repos (as git submodules)

I plan to add each repo I create in GitHub as submodules here as an easy way to clone all of them at once.

The stable branch of this repo will be updated to point to the latest stable branch of each of the submodules
once I am at the point of having stable versions of each.

Using these commands should clone this repo and then fetch all the other repos as submodules:

```
  git clone https://github.com/JohnRyland/Repos.git
  cd Repos
  git submodule update --init --recursive
```

Here is a list of the repos at the moment:

  - Backups
  - Compression
  - DataStructures
  - Maths3D
  - VimSettings

I plan to add a few scripts in here too that make working with the repos together a bit easier. At the moment
there is just one tool script:

  - status.sh



