You need to create a rhel 7 image which works in our
environment by running the following command from
this directory:

NOTE: You should recreate the keys in the keys directory

    1. Update the Dockerfile to pull an initial CentOS7 image
    2. docker build -t="squid-proxy:phase1" .
    3. Run dockerstart to bring up the container (the container you start should match the tag in step #2


