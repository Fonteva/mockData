# mockData

This repo stores data that powers the mock UI. To enable it, in the Chrome/Firefox console, type
> `sessionStorage.setItem('mock', true)`

### Scenarios
You can store multiple result sets for each action. The variations of these results are called scenarios. 

Usage:
You have a call `getItems` which returns some sample data. Now you want to test a scenario that returns zero results.

1. In this repo, in the branch gh-pages, create `/2018-R2/getItems.zero.json` with appropriate contents (e.g. `[]`)
1. Commit and push
1. In your browser console
  1. `sessionStorage.setItem('mock', true)`
  1. `sessionStorage.setItem('scenario', 'zero')`
1. Navigate to your page that calls `getItems`


*Note* In the case where a scenario doesn't exist for a given call, `executeAction` will fallback to the base json (e.g. `getItems.json`)

[2018-R2](/mockData/2018-R2)

## *Note*
There is a lag of a few minutes for GitHub to publish from the repo to Pages.