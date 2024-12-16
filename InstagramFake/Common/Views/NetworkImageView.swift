import SwiftUI

struct NetworkImageView: View {
    let url = URL(string: "https://loremflickr.com/320/240/music?lock=1")!

    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView() // Загрузка
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit() // Масштабирование
            case .failure:
                Image(systemName: "photo") // Ошибка
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
            @unknown default:
                EmptyView()
            }
        }
        .frame(width: 320, height: 240)
        .clipShape(RoundedRectangle(cornerRadius: 10)) // Закругленные углы
    }
}