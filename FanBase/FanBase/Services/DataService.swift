//
//  DataService.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import Foundation

class DataService{
    static let setter = DataService()
    
    private let movies = [
        movieNames(title: "Avengers: Endgame", imageName: "1.jpg"),
        movieNames(title: "Andhadhun", imageName: "2.jpg"),
        movieNames(title: "Johnny English Strikes Again", imageName: "4.jpg"),
        movieNames(title: "Inception", imageName: "3.jpg"),
    ]
    
    private let movie1Actors = [ //, desc: "lorem ipsum"
        actorDetails(title: "Robert Downy Jr", imageName: "m1a1.jpg", desc: "Robert John Downey Jr. (born April 4, 1965) is an American actor, producer, and singer. His career has been characterized by critical and popular success . His films have grossed over $14.4 billion worldwide, making him the second highest-grossing box-office star of all time."),
        actorDetails(title: "Chris Evans", imageName: "m1a2.jpg", desc: "Christopher Robert Evans (born June 13, 1981) is an American actor. Evans made his film debut in a wildlife educational film. In 2005, he gained attention for his portrayal of Marvel Comics character Human Torch in Fantastic Four (2005), and its 2007 sequel Fantastic Four: Rise of the Silver Surfer."),
        actorDetails(title: "Chris Hemsworth", imageName: "m1a3.jpg", desc: "Christopher Hemsworth (born 11 August 1983) is an Australian actor. Hemsworth is best known for playing Thor in eight Marvel Cinematic Universe films, beginning with Thor (2011) and appearing most recently in Avengers: Endgame (2019)."),
        actorDetails(title: "Scarlett Johansson", imageName: "m1a4.jpg", desc: "Scarlett Ingrid Johansson (born November 22, 1984) is an American actress and singer. The world's highest-paid actress since 2018, she has made multiple appearances in the Forbes Celebrity 100. Her films have grossed over $14.3 billion worldwide, making Johansson the ninth-highest-grossing box office star of all time."),
        actorDetails(title: "Josh Brolin", imageName: "m1a5.jpg", desc: "Josh James Brolin (born February 12, 1968) is an American actor. Brolin has been nominated at the Academy. He appeared in the mid-credits scene of Avengers: Age of Ultron (2015), and reprised the role in both Avengers: Infinity War (2018) and Avengers: Endgame (2019).")
    ]
    
    private let movie2Actors = [
        actorDetails(title: "Aayushmann Khurrana", imageName: "m2a1.jpg", desc: "Ayushmann Khurrana (born Nishant Khurrana on 14 September 1984) is an Indian actor, singer, and television host. Known for his portrayals of ordinary men, he is the recipient of several awards, including a National Film Award and four Filmfare Awards, and has appeared in Forbes India's Celebrity 100 list of 2013 and 2019. Khurrana's performances as a blind pianist in Andhadhun and an honest cop in Article 15 won him the National Film Award for Best Actor for the former."),
        actorDetails(title: "Tabu", imageName: "m2a2.jpg", desc: "Tabassum Fatima Hashmi (born 4 November 1970), known by the mononym Tabu, is an Indian film actress primarily working in Hindi-language films. She has additionally worked in other regional films in different languages including Telugu, Tamil, Malayalam, Bengali and Marathi."),
        actorDetails(title: "Radhika Apte", imageName: "m2a3.jpg", desc: "Radhika Apte (born 7 September 1985) is an Indian actress. She began acting in theatre and made her film debut with a brief role in the Hindi fantasy Vaah! Life Ho Toh Aisi! (2005). Apte has since worked in Hindi, Marathi, Tamil, Telugu, Malayalam, Bengali, and English-language films.Apte's first starring role was in the 2009 Bengali social drama Antaheen."),
        actorDetails(title: "Zakir Hussain", imageName: "m2a4.jpg", desc: "Zakir Hussain is an Indian film actor who is known for his negative and comic roles. His best-known performances include those of Rashid in Ramgopal Varma's 2005 film Sarkar (an adaptation of The Godfather), Shardul in Sriram Raghavan's 2007 film Johnny Gaddaar and Prakash Rao in Rohit Shetty's Singham Returns."),
        actorDetails(title: "Ashwini Kalsekar", imageName: "m2a5.jpg", desc: "Ashwini Kalsekar is an Indian actress works mostly in Marathi television and film industry, later Hindi daily soaps and Known mostly for her collaboration with the famous directors Sriram Raghavan, Rohit Shetty and Ram Gopal Varma. She has been in a part of the Golmaal series since the start.")
    ]
    
    private let movie3Actors = [
        actorDetails(title: "Leonardo DiCaprio", imageName: "m3a1.jpg", desc: "Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor, producer, philanthropist, and environmentalist. He has often played unconventional parts, particularly in biopics, drama, crime, romance, and period films. As of 2019, his films have grossed US$7.2 billion worldwide, and he has placed eight times in annual rankings of the highest-paid actors in the world."),
        actorDetails(title: "Ken Watanabe", imageName: "m3a2.jpg", desc: "Ken Watanabe (born October 21, 1959) is a Japanese actor. Among other awards, he has won the Japan Academy Prize for Best Actor twice, in 2007 for Memories of Tomorrow and in 2010 for Shizumanu Taiyō. He is also known for his roles in Christopher Nolan's films Batman Begins and Inception as well as appearing in others films like Memoirs of a Geisha and Pokémon Detective Pikachu."),
        actorDetails(title: "Joseph Gordan", imageName: "m3a3.jpg", desc: "Joseph Leonard Gordon-Levitt ( born February 17, 1981) is an American actor, filmmaker, singer, and entrepreneur. For his leading performances in (500) Days of Summer and 50/50, he was nominated for the Golden Globe Award for Best Actor – Motion Picture Musical or Comedy."),
        actorDetails(title: "Marion Cotillard", imageName: "m3a4.jpg", desc: "Marion Cotillard ; born 30 September 1975) is a French actress, singer-songwriter, musician, and environmentalist. She is the recipient of an Academy Award, a BAFTA Award, a Golden Globe Award, two César Awards, a European Award, and a Lumières Award. She became a Knight of the Order of Arts and Letters in France in 2010, and was promoted to Officer in 2016."),
        actorDetails(title: "Ellen Page", imageName: "m3a5.jpg", desc: "Ellen Grace Philpotts-Page (born February 21, 1987) is a Canadian actress and producer. Her breakthrough role was the title role in Jason Reitman's film Juno (2007), for which she received nominations for an Academy Award, a BAFTA, a Golden Globe and a Screen Actors Guild Award for Best Actress and won the Independent Spirit Award, an MTV Movie Award and a Teen Choice Award.")
    ]
    
    private let movie4Actors = [
        actorDetails(title: "Rowan Atkinson", imageName: "m4a1.jpg", desc: "Rowan Sebastian Atkinson CBE (born 6 January 1955) is an English actor, comedian, and writer. He is best known for his work on the sitcoms Blackadder (1983–1989) and Mr. Bean (1990–1995)."),
        actorDetails(title: "Olga Kurylenko", imageName: "m4a2.jpg", desc: "Olga Konstiantinivna Kurylenko (born 14 November 1979) is a Ukrainian-French actress and model."),
        actorDetails(title: "Ben Miller", imageName: "m4a3.jpg", desc: "Bennet Evan Miller OBE (born 24 February 1966)[1] is an English actor. Miller is also known for playing the lead role of DI Richard Poole in the first two series of the BBC Crime Drama Death in Paradise."),
        actorDetails(title: "Jake Lacy", imageName: "m4a4.jpg", desc: "Jake Lacy (born February 14, 1985) is an American actor. He is known for his portrayal of Pete Miller on the ninth and final season of The Office and as a co-lead as Casey Marion Davenport on the ABC sitcom Better with You (2010–11)."),
        actorDetails(title: "Emma Thompson", imageName: "m4a5.jpg", desc: "Dame Emma Thompson DBE[2] (born 15 April 1959) is a British actress, screenwriter, activist, author and comedian. She is one of Britain's most acclaimed actresses and is the recipient of numerous accolades, including two Academy Awards, a Primetime Emmy Award, three BAFTA Awards and two Golden Globe Awards.")
    ]

    
    func getMovies() -> [movieNames] {
        return movies
    }
    
    func getMovie1Act() -> [actorDetails] {
        return movie1Actors
    }
    
    func getMovie2Act() -> [actorDetails] {
        return movie2Actors
    }
    
    func getMovie3Act() -> [actorDetails] {
        return movie3Actors
    }
    
    func getMovie4Act() -> [actorDetails] {
        return movie4Actors
    }
    
    func getActors(forMovieTitle title: String) -> [actorDetails] {
        switch title {
        case "Avengers: Endgame":
            return getMovie1Act()
        case "Andhadhun":
            return getMovie2Act()
        case "Inception":
            return getMovie3Act()
        case "Johnny English Strikes Again":
            return getMovie4Act()
        default:
            return getMovie4Act()
        }
    }
}
