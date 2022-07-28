curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $GITHUB_ACCESS_TOKEN" \
  https://api.github.com/users/jpalmasolutions/repos \
  | jq -r '.[]|.clone_url' | xargs -L1 git clone