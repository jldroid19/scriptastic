from langchain_community.llms import Ollama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser


llm = Ollama(model="llama2")

llm.invoke("how can langsmith help with testing?")


prompt = ChatPromptTemplate.from_messages([
    ("system", "You are world class technical documentation writer."),
    ("user", "{input}")
])

chain = prompt | llm 

# resp=chain.invoke({"input": "how can langsmith help with testing?"})

output_parser = StrOutputParser()
chain = prompt | llm | output_parser

resp=chain.invoke({"input": "how can langsmith help with testing?"})
print(resp)