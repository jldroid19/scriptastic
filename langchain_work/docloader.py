from langchain_community.document_loaders import TextLoader

loader = TextLoader("./testtext.txt")
data = loader.load()

print(data)