 java -version
          wget https://downloads.apache.org//jmeter/binaries/apache-jmeter-5.4.3.zip
          unzip apache-jmeter-5.4.3.zip
          cd apache-jmeter-5.4.3/bin
          ./jmeter -v
          pwd
          cd $GITHUB_WORKSPACE/apache-jmeter-5.4.3
          wget -q --no-check-certificate https://jmeter-plugins.org/files/packages/jpgc-dummy-0.4.zip  -P .
          unzip -o jpgc-dummy-0.4.zip  && rm jpgc-dummy-0.4.zip
          cd $GITHUB_WORKSPACE/apache-jmeter-5.4.3/bin
         for i in $( ls $GITHUB_WORKSPACE/*.jmx); do
            ./jmeter -n -t $i;
         done
