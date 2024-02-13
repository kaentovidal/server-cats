# WEBSITE USING CLUSTER DATAPROG FORM GOOGLE CLOUD PLATFORM

Google has an option to test its services with a credit of 300 dollars for the use of the platform. Try it for free from [here](https://cloud.google.com/).


Once you get the proof, the first thing to do is to create a project. Then the [bucket](https://cloud.google.com/storage/docs/buckets) on which the project will be hosted. 


 Now click on the console and insert the following command to create the cluster. To do so, you must specify the **cluster name**, the **bucket name** and the **project id**.

```sh
gcloud beta dataproc clusters create cluster_name --enable-component-gateway --bucket bucket_name --region europe-west1 --zone europe-west1-c --master-machine-type n1-standard-2 --master-boot-disk-size 500 --num-workers 2 --worker-machine-type n1-standard-2 --worker-boot-disk-size 500 --image-version 2.0-debian10 --properties spark:spark.jars.packages=org.apache.spark:spark-sql-kafka-0-10_2.12:3.1.3 --optional-components JUPYTER,ZOOKEEPER --max-age 160400s --initialization-actions 'gs://goog-dataproc-initialization-actions-europe-west1/kafka/kafka.sh' --project project_id
```
When the cluster has been created in the search bar type cluster and select the cluster dataproc option where the cluster will be shown by double clicking on it we can enter the cluster and its options where the **web interfaces** field appears. We select this option and once there we select Jupyter Lab. Inside Jupyter Lab we have several options of which we select the terminal.

Once we select the terminal we will have access to the cluster through the terminal.

in the terminal go to the dataproc directory `cd /home/dataproc` and clone this repository
```
git clone https://github.com/kaentovidal/server-cats
```
enter to the repository `cd /server-cats`

install docker by runnig the file `dockerinstall.sh`
```
bash dockerinstall.sh
```
raises the necessary services by executing the file `docker-compose.yml` with the following command.
```
docker compose up -d
```






