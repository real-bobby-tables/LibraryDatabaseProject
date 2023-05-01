import requests
 
# Google Books API endpoint
url = 'https://www.googleapis.com/books/v1/volumes'
 
# Query the Google Books API
params = {
    'q': "+subject:audiobook+subject:python programming",  # search query
    'maxResults': 40,  # maximum number of results to retrieve
    'startIndex': 0  # starting index of the results
}
response = requests.get(url, params=params)
 
# Process the API response and print the insert statements
c = 25
if response.ok:
    data = response.json()
    for item in data['items']:
        print(item)
        item_id = c
        book_name = item['volumeInfo'].get('title', None)
        book_type = item['volumeInfo'].get('printType', None)
        book_page_num = item['volumeInfo'].get('pageCount', None)
        try:
            book_genre = item['volumeInfo'].get('categories')[0]
        except:
            book_genre = 'NULL'
         
        # Print the insert statement
        if book_genre == 'NULL':
            insert_statement = f"INSERT INTO Book (item_ITEM_ID, BOOK_NAME, BOOK_TYPE, BOOK_PAGE_NUM, BOOK_GENRE, Location_LOC_ID) VALUES ({item_id}, '{book_name}', '{book_type}', {book_page_num}, NULL, 10);"
        else:
            insert_statement = f"INSERT INTO Book (item_ITEM_ID, BOOK_NAME, BOOK_TYPE, BOOK_PAGE_NUM, BOOK_GENRE, Location_LOC_ID) VALUES ({item_id}, '{book_name}', '{book_type}', {book_page_num}, '{book_genre}', 9);"
        print(insert_statement)
        c += 1
else:
    print(response.content)