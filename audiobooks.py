import requests
 
# Google Books API endpoint
url = 'https://www.googleapis.com/books/v1/volumes'
 
# Query the Google Books API
params = {
    'q': "+subject:audiobook",  # search query
    'maxResults': 40,  # maximum number of results to retrieve
    'startIndex': 0  # starting index of the results
}
response = requests.get(url, params=params)
 
# Process the API response and print the insert statements
c = 65
if response.ok:
    data = response.json()
    for item in data['items']:
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
            insert_statement = f"INSERT INTO Book (item_ITEM_ID, AUDIO_NAME, AUDIO_PAGE_LENGTH, AUDIO_GENRE, Location_LOC_ID) VALUES ({item_id}, '{book_name}', {book_page_num}, NULL, 10);"
        else:
            insert_statement = f"INSERT INTO Book (item_ITEM_ID, AUDIO_NAME, AUDIO_PAGE_LENGTH, AUDIO_GENRE, Location_LOC_ID) VALUES ({item_id}, '{book_name}', {book_page_num}, '{book_genre}', 1);"
        print(insert_statement)
        c += 1
else:
    print(response.content)