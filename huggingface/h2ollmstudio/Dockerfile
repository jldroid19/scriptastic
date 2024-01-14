# Use the base image for h2o-llmstudio
FROM gcr.io/vorvan/h2oai/h2o-llmstudio:nightly

# Set the working directory to /workspace
WORKDIR /workspace

# Define user and group IDs as ARG variables
ARG USER_ID
ARG GROUP_ID
ENV USER_ID=1001
ENV GROUP_ID=1001
# Create a user and group with the specified IDs
RUN useradd -u $USER_ID -g $GROUP_ID -m llmstudio

# Set up shared volumes and expose the necessary port
VOLUME /workspace/data
VOLUME /workspace/output
VOLUME /home/llmstudio/.cache
EXPOSE 10101

# Start the application
CMD ["--runtime=nvidia", "--shm-size=64g", "--init", "--rm", "-p", "10101:10101"]
