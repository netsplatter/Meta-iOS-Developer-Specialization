import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        Image("littleLemon")
            .resizable()
            .frame(width: 200, height: 140)
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
