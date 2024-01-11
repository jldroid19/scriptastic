from langchain_community.document_loaders import DirectoryLoader

loader = DirectoryLoader('../', glob="**/*.sh", show_progress=True)

docs = loader.load()
print(docs)
len(docs)