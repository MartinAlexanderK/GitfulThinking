//
//  AsyncImageBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct AsyncImageBootCamp: View {
    let url = URL(string: "https://picsum.photos/200/300")
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case.empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
                    .scaledToFit()
            case.failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .frame(width: 200, height: 200)
        //                .cornerRadius(20)
        //                .scaledToFit()
        //        }, placeholder: {
        //            ProfileView()
        //        })
    }
}

struct AsyncImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootCamp()
    }
}
