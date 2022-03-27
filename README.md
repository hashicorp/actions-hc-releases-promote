# actions-hc-releases-promote

GitHub Action for promoting metadata and artifacts using hc-releases

## Usage

**Params**

| Parameter                   | Description                   | Required | Default   | Type        |
| ----------------------------| ------------------------------| ---------| ----------| ------------|
| product-name                | Product name                  | Yes      | -         | string      |
| version                     | Product version               | Yes      | -         | string      |
| hc-releases-host            | hc releases host              | Yes      | -         | string      |
| hc-releases-key             | hc releases api key           | Yes      | -         | string      |
| hc-releases-source_env_key  | hc releases source env key    | Yes      | -         | string      |
| source-env                  | source env                    | No       | 'staging' | string      |   


### Example Usage

```
	-
	name: Promote
	uses: hashicorp/actions-hc-releases-promote@v1
	with:
		product-name: "terraform-ls"
		version: "${{ github.ref_name }}"
		hc-releases-host: "${{ secrets.HC_RELEASES_HOST_PROD }}"
		hc-releases-key: "${{ secrets.HC_RELEASES_KEY_PROD }}"
		hc-releases-source_env_key: "${{ secrets.HC_RELEASES_KEY_STAGING }}"
```