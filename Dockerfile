FROM python:3-alpine

WORKDIR /usr/src/app

# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.7/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.7/community" >> /etc/apk/repositories

# install chromedriver
RUN apk update
RUN apk add chromium chromium-chromedriver git

# install robot
RUN pip install --upgrade pip
RUN pip --no-cache-dir install robotframework robotframework-seleniumlibrary selenium
RUN git config --global url."https://b11a1ea3d09573fcdee441939a9dc8451428935d:@github.com/".insteadOf "https://github.com/"
RUN mkdir Results && \
    chmod 775 Results 

RUN ln -s /usr/bin/chromedriver /usr/local/bin/chromedriver
#RUN robot -d ./Results -v Environment:DEV -v BROWSER:HeadlessChrome -t Testcase1_CreateProposalToSubmitProposal_WorkFlow ./cdpcms-testing/EndToEndWorkFlowTest

CMD ["echo", "Complete!"]
