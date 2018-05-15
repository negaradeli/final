Author.delete_all
will = Author.create name: 'William Shakespeare'
keats = Author.create name: 'John Keats'
fitz = Author.create name: 'F. Scott Fitzgerald'
jk = Author.create name: 'J.K. Rowling'

Book.delete_all
Book.create title: 'Hamlet', price: 1500, hardcover: false,
            author_id: will.id,
            photo_url: 'https://images-na.ssl-images-amazon.com/images/I/81pLG56qwfL._AC_SX580_SY580_.jpg',
            summary: "Hamlet is Shakespeare's most popular, and most puzzling, play. It follows the form of a \"revenge tragedy,\" in which the hero, Hamlet, seeks vengeance against his father's murderer, his uncle Claudius, now the king of Denmark. Much of its fascination, however, lies in its uncertainties. Among them: What is the Ghost--Hamlet's father demanding justice, a tempting demon, an angelic messenger? Does Hamlet go mad, or merely pretend to? Once he is sure that Claudius is a murderer, why does he not act? Was his mother, Gertrude, unfaithful to her husband or complicit in his murder? The authoritative edition of Hamlet from The Folger Shakespeare Library, the trusted and widely used Shakespeare series for students and general readers"

Book.create title: 'Keats Poetry and Prose', price: 2121, hardcover: true,
            author_id: keats.id,
            photo_url: 'https://images-na.ssl-images-amazon.com/images/I/41OIp%2BDXrBL._SX302_BO1,204,203,200_.jpg',
            summary: "This Norton Critical Edition seeks to return Keats―one of the most beloved poets of the English language―to his cultural moment by tracking his emergence as a public poet. For this reason, this volume presents the writings in the order of publication rather than composition. Readers can trace the poems through letters, reviews, and related material chronologically interleaved with the texts themselves. This edition offers extensive apparatus to help readers fully appreciate Keats’s poetry and legacy, including an introduction, headnotes, explanatory annotations, and a wealth of contextual documents. “Criticism” includes twelve important commentaries on Keats and his poetry, by Paul de Man, Marjorie Levinson, Grant F. Scott, Margaret Homans, Nicholas Roe, Stuart Sperry, Neil Fraistat, Jack Stillinger, James Chandler, Alan Bewell, and Jeffrey N. Cox."
Book.create title: 'The Great Gatsby', price: 1495, hardcover: false,
            author_id: fitz.id,
            photo_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/TheGreatGatsby_1925jacket.jpeg/220px-TheGreatGatsby_1925jacket.jpeg',
            summary: 'A true classic of twentieth-century literature, this edition has been updated by Fitzgerald scholar James L.W. West III to include the author’s final revisions and features a note on the composition and text, a personal foreword by Fitzgerald’s granddaughter, Eleanor Lanahan—and a new introduction by two-time National Book Award winner Jesmyn Ward. The Great Gatsby, F. Scott Fitzgerald\'s third book, stands as the supreme achievement of his career. First published in 1925, this quintessential novel of the Jazz Age has been acclaimed by generations of readers. The story of the mysteriously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted "gin was the national drink and sex the national obsession," it is an exquisitely crafted tale of America in the 1920s.'

Book.create title: 'Harry Potter', price: 1495, hardcover: false,
            author_id: jk.id,
            photo_url: 'https://prodimage.images-bn.com/pimages/9780590353427_p0_v2_s550x406.jpg',
            summary: 'Kids do some magic while in school.'

print "There are now #{Author.count} authors in the database.\n"
print "There are now #{Book.count} books in the database.\n"
