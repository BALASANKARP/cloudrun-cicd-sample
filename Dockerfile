- name: Build and Push Docker image
  run: |
    IMAGE=${{ secrets.REGION }}-docker.pkg.dev/${{ secrets.GCP_PROJECT_ID }}/sample-repo/${{ secrets.SERVICE_NAME }}:${{ github.sha }}
    docker build -t $IMAGE .
    docker push $IMAGE
    echo "IMAGE=$IMAGE" >> $GITHUB_ENV
