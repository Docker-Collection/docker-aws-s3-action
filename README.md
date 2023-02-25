# Docker AWS S3 Action

Simple action make for my use case!

Example can see [Test.yml](.github/workflows/Test.yml).

> AWS S3 Upload

```yml
- name: AWS S3 Uplaod
  uses: Docker-Collection/docker-aws-s3-action@main
  with:
    aws_s3_bucket: ${{ secrets.AWS_S3_BUCKET }}
    aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
    aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    aws_s3_endpoint: ${{ secrets.AWS_S3_ENDPOINT }}
    source_dir: "<DIR>"
    aws_command: "sync"
```

> AWS S3 Download

```yml
- name: AWS S3 Download
  uses: Docker-Collection/docker-aws-s3-action@main
  with:
    aws_s3_bucket: ${{ secrets.AWS_S3_BUCKET }}
    aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
    aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    aws_s3_endpoint: ${{ secrets.AWS_S3_ENDPOINT }}
    dest_dir: "<DIR_OR_FILE>"
    aws_command: "cp"
```

## Inputs

| Variable | Required | Default | Description |
| -------- | -------- | ------- | ----------- |
| aws_s3_bucket | Required | N/A | AWS Bucket Name |
| aws_access_key_id | Required | N/A | AWS Access Key |
| aws_secret_access_key | Required | N/A | AWS Secret Access key |
| aws_region | Optional | us-east-1 | AWS Region |
| aws_s3_endpoint | Optional | N/A | Custom AWS Endpoint |
| aws_command | Required | N/A | What you want to run, aviable command is ``sync`` ``cp`` ``ls`` |
| dest_dir | Optional | N/A | Destination path |
| source_dir | Optional | N/A | Source path |
| aws_flags | Optional | N/A | The flag you want to run |

## Reference

- [s3-sync-action](https://github.com/jakejarvis/s3-sync-action)
- [s3-cp-action](https://github.com/prewk/s3-cp-action)
- [s3-cp-action](https://github.com/luke-m/s3-cp-action)
- [aws-s3-github-action](https://github.com/keithweaver/aws-s3-github-action)
- [action-s3-cp](https://github.com/qoqa/action-s3-cp)
