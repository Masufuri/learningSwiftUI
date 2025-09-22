//
//  Test.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 22/9/25.
//

import SwiftUI

struct ArcAnimationView: View {
//    @State private var progress: CGFloat = 0.0
//
//    var body: some View {
//        GeometryReader { geo in
//            let start = CGPoint(x: 50, y: geo.size.height - 100)
//            let end = CGPoint(x: geo.size.width - 50, y: geo.size.height - 100)
//            let control = CGPoint(x: geo.size.width / 2, y: 100) // control point để tạo cung
//
//            // Đường cong (quadratic bezier)
//            let path = Path { p in
//                p.move(to: start)
//                p.addQuadCurve(to: end, control: control)
//            }
//
//            ZStack {
//                path
//                    .stroke(Color.gray.opacity(0.3), lineWidth: 2)
//
//                // Chấm chạy theo đường
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 20, height: 20)
//                    .offset(pointOnQuadBezier(start: start, control: control, end: end, t: progress))
//            }
//            .onAppear {
//                withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
//                    progress = 1.0
//                }
//            }
//        }
//    }

    // Hàm tính offset (CGPoint → CGSize)
//    func pointOnQuadBezier(start: CGPoint, control: CGPoint, end: CGPoint, t: CGFloat) -> CGSize {
//        let x = pow(1 - t, 2) * start.x
//              + 2 * (1 - t) * t * control.x
//              + pow(t, 2) * end.x
//        let y = pow(1 - t, 2) * start.y
//              + 2 * (1 - t) * t * control.y
//              + pow(t, 2) * end.y
//        return CGSize(width: x, height: y)
//    }
    
//    @State private var progressBallLeft3: CGFloat = 0 // 0.1
//    @State private var progressBallLeft1: CGFloat = 1 / (UIScreen.main.bounds.width + 40) * 30 * 2 // 0.1
//    @State var originalPositionOfBallLeft1: CGFloat = 30 / (UIScreen.main.bounds.width + 30) * 2
//    @State var originalPositionOfBallLeft2: CGFloat = 30 / (UIScreen.main.bounds.width + 30)
//    @State var tiLeChieuRong1HatSoVoiQuangDuong = 30 / (UIScreen.main.bounds.width + 30)
//    @State var progressBallLeft2: CGFloat = 30 / (UIScreen.main.bounds.width + 30)
//    @State var progressBallLeft4: CGFloat = 30 / (UIScreen.main.bounds.width + 30) * 3
//    @State var originalPositionOfBallLeft4: CGFloat = 30 / (UIScreen.main.bounds.width + 30) * 3
//    @State var progressBallLeft5: CGFloat = 30 / (UIScreen.main.bounds.width + 30) * 4
//    @State var originalPositionOfBallLeft5: CGFloat = 30 / (UIScreen.main.bounds.width + 30) * 4
//    @State private var dragOffset: CGSize = .zero
//
//    @State var originalPositionBallRight1: CGFloat = 1
//    @State var progressBallRight1: CGFloat = 1.0
//    @State var originalPositionBallRight2: CGFloat = 1 - (30 / (UIScreen.main.bounds.width + 30))
//    @State var progressBallRight2: CGFloat = 1 - (30 / (UIScreen.main.bounds.width + 30))
//    @State var originalPositionBallRight3: CGFloat = 1 - (30 / (UIScreen.main.bounds.width + 30) * 2)
//    @State var progressBallRight3: CGFloat = 1 - (30 / (UIScreen.main.bounds.width + 30) * 2)
//    @State var originalPositionBallRight4: CGFloat = 1 - (30 / (UIScreen.main.bounds.width + 30) * 3)
//    @State var progressBallRight4: CGFloat = 1 - (30 / (UIScreen.main.bounds.width + 30) * 3)
    
    @State private var progressBallLeft3: CGFloat = 0 // 0.1
    @State private var progressBallLeft1: CGFloat = 1 / (UIScreen.main.bounds.width + 80) * 40 * 2 // 0.1
    @State var originalPositionOfBallLeft1: CGFloat = 40 / (UIScreen.main.bounds.width + 80) * 2
    @State var originalPositionOfBallLeft2: CGFloat = 40 / (UIScreen.main.bounds.width + 80)
    @State var tiLeChieuRong1HatSoVoiQuangDuong = 40 / (UIScreen.main.bounds.width + 40)
    @State var progressBallLeft2: CGFloat = 40 / (UIScreen.main.bounds.width + 80)
    @State var progressBallLeft4: CGFloat = 40 / (UIScreen.main.bounds.width + 80) * 3
    @State var originalPositionOfBallLeft4: CGFloat = 40 / (UIScreen.main.bounds.width + 80) * 3
    @State var progressBallLeft5: CGFloat = 40 / (UIScreen.main.bounds.width + 80) * 4
    @State var originalPositionOfBallLeft5: CGFloat = 40 / (UIScreen.main.bounds.width + 80) * 4
    @State private var dragOffset: CGSize = .zero

    @State var originalPositionBallRight1: CGFloat = 1
    @State var progressBallRight1: CGFloat = 1.0
    @State var originalPositionBallRight2: CGFloat = 1 - (40 / (UIScreen.main.bounds.width + 50))
    @State var progressBallRight2: CGFloat = 1 - (40 / (UIScreen.main.bounds.width + 50))
    @State var originalPositionBallRight3: CGFloat = 1 - (40 / (UIScreen.main.bounds.width + 50) * 2)
    @State var progressBallRight3: CGFloat = 1 - (40 / (UIScreen.main.bounds.width + 50) * 2)
    @State var originalPositionBallRight4: CGFloat = 1 - (40 / (UIScreen.main.bounds.width + 50) * 3)
    @State var progressBallRight4: CGFloat = 1 - (40 / (UIScreen.main.bounds.width + 50) * 3)

    var body: some View {
        GeometryReader { geo in
//            let start = CGPoint(x: -15, y: 100)
            let start = CGPoint(x: -25, y: 100)
            let end = CGPoint(x: geo.size.width + 25, y: 0)
            let control = CGPoint(x: geo.size.width / 2, y: 0)

            let path = Path { p in
                p.move(to: start)
                p.addQuadCurve(to: end, control: control)
            }

            ZStack {
                // Vẽ đường cong để dễ hình dung
                path.stroke(Color.gray.opacity(0.3), lineWidth: 2)

                // View di chuyển theo cung
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallLeft1, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallLeft2, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallLeft3, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallLeft4, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallLeft5, start: start, control: control, end: end))

                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallRight1, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallRight2, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallRight3, start: start, control: control, end: end))
                Image(.tasbihBall1)
                    .resizable()
                    .modifier(BezierMovingCircle(t: progressBallRight4, start: start, control: control, end: end))
            }
            .contentShape(Rectangle())
            .gesture(
                DragGesture()
                    .onChanged { value in
                        // Tính progress theo kéo ngang
                        let total = end.x - start.x
//                        var khoangCach2Hat =
                        if value.translation.width > 0 {
                            var t = (originalPositionBallRight4 - originalPositionOfBallLeft5) * ((value.translation.width) / total) + originalPositionOfBallLeft5
                            t = max(originalPositionOfBallLeft5, min(originalPositionBallRight4, t)) // clamp 0...1
                            progressBallLeft5 = t
                            var quangDuong1HatDiHetChieuDaiCuaNo = (40 / total) *
                                (value.translation.width / total)
                            var ball2Transition = ((40 / total) *
                                ((value.translation.width) / total)) + originalPositionOfBallLeft2
                            var ball2 = max(originalPositionOfBallLeft2, min(originalPositionOfBallLeft1, ball2Transition))
                            var ball3 = max(0, min(quangDuong1HatDiHetChieuDaiCuaNo, originalPositionOfBallLeft2))
                            var ball4 = max(originalPositionOfBallLeft4, min(originalPositionOfBallLeft5, quangDuong1HatDiHetChieuDaiCuaNo + originalPositionOfBallLeft4))
                            var ball1 = max(originalPositionOfBallLeft1, min(originalPositionOfBallLeft4, quangDuong1HatDiHetChieuDaiCuaNo + originalPositionOfBallLeft1))

                            progressBallLeft2 = ball2
                            progressBallLeft3 = ball3
                            progressBallLeft4 = ball4
                            progressBallLeft1 = ball1

                            var ballRight1Transition = ((40 / total) *
                                ((value.translation.width) / total)) + originalPositionBallRight1
                            var ballRight1 = max(originalPositionBallRight1, min(1 + originalPositionOfBallLeft2, ballRight1Transition))
                            progressBallRight1 = ballRight1

                            var ballRight2 = max(originalPositionBallRight2, min(originalPositionBallRight1 /* + tiLeChieuRong1HatSoVoiQuangDuong*/, quangDuong1HatDiHetChieuDaiCuaNo + originalPositionBallRight2))
                            progressBallRight2 = ballRight2

                            var ballRight3 = max(originalPositionBallRight3, min(originalPositionBallRight2 /* + tiLeChieuRong1HatSoVoiQuangDuong*/, quangDuong1HatDiHetChieuDaiCuaNo + originalPositionBallRight3))
                            progressBallRight3 = ballRight3

                            var ballRight4 = max(originalPositionBallRight4, min(originalPositionBallRight3, quangDuong1HatDiHetChieuDaiCuaNo + originalPositionBallRight4))
                            progressBallRight4 = ballRight4
                        } else {
                            var quangDuong1HatDiHetChieuDaiCuaNo = (30 / total) *
                                (value.translation.width / total)

                            var ball5 = max(originalPositionOfBallLeft4, min(originalPositionOfBallLeft5 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionOfBallLeft5)) // clamp 0...1
                            progressBallLeft5 = ball5

                            var ball2 = max(0, min(originalPositionOfBallLeft2 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionOfBallLeft2))
                            var ball4 = max(originalPositionOfBallLeft1, min(originalPositionOfBallLeft4 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionOfBallLeft4))
                            var ball1 = max(originalPositionOfBallLeft2, min(originalPositionOfBallLeft1 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionOfBallLeft1))

                            progressBallLeft2 = ball2
                            progressBallLeft4 = ball4
                            progressBallLeft1 = ball1

                            var ballRight1 = max(originalPositionBallRight2, min(originalPositionBallRight1 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionBallRight1))
                            progressBallRight1 = ballRight1

                            var ballRight2 = max(originalPositionBallRight3, min(originalPositionBallRight2 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionBallRight2))
                            progressBallRight2 = ballRight2

                            var ballRight3 = max(originalPositionBallRight4, min(originalPositionBallRight3 + quangDuong1HatDiHetChieuDaiCuaNo, originalPositionBallRight3))
                            progressBallRight3 = ballRight3

                            var ballRight4Transition = (originalPositionBallRight4 - originalPositionOfBallLeft5) * ((value.translation.width) / total) + originalPositionBallRight4
                            var ballRight4 = max(originalPositionOfBallLeft5, min(ballRight4Transition, originalPositionBallRight4))
                            progressBallRight4 = ballRight4
                        }
                    }
                    .onEnded { value in
                        if value.translation.width > 0 {
                            // Lưu offset để kéo tiếp
                            //                        dragOffset.width += value.translation.width
                            DispatchQueue.main.asyncAfter(deadline: .now() + (progressBallLeft1 == 1 ? 0 : 0.2), execute: {
                                progressBallLeft5 = originalPositionOfBallLeft5
                                progressBallLeft2 = originalPositionOfBallLeft2
                                progressBallLeft3 = 0
                                progressBallLeft4 = originalPositionOfBallLeft4
                                progressBallLeft1 = originalPositionOfBallLeft1

                                progressBallRight1 = originalPositionBallRight1
                                progressBallRight2 = originalPositionBallRight2
                                progressBallRight3 = originalPositionBallRight3
                                progressBallRight4 = originalPositionBallRight4
                            })
                            withAnimation(.easeOut(duration: 0.2)) {
                                progressBallLeft5 = originalPositionBallRight4
                                progressBallLeft2 = originalPositionOfBallLeft1
                                progressBallLeft3 = originalPositionOfBallLeft2
                                progressBallLeft4 = originalPositionOfBallLeft5
                                progressBallLeft1 = originalPositionOfBallLeft4

                                progressBallRight1 = 1 + tiLeChieuRong1HatSoVoiQuangDuong
                                progressBallRight2 = originalPositionBallRight1//originalPositionBallRight2 + tiLeChieuRong1HatSoVoiQuangDuong
                                progressBallRight3 = originalPositionBallRight2//originalPositionBallRight3 + tiLeChieuRong1HatSoVoiQuangDuong
                                progressBallRight4 = originalPositionBallRight3//originalPositionBallRight4 + tiLeChieuRong1HatSoVoiQuangDuong
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + (progressBallLeft1 == 1 ? 0 : 0.2), execute: {
                                progressBallLeft5 = originalPositionOfBallLeft5
                                progressBallLeft2 = originalPositionOfBallLeft2
                                progressBallLeft3 = 0
                                progressBallLeft4 = originalPositionOfBallLeft4
                                progressBallLeft1 = originalPositionOfBallLeft1

                                progressBallRight1 = originalPositionBallRight1
                                progressBallRight2 = originalPositionBallRight2
                                progressBallRight3 = originalPositionBallRight3
                                progressBallRight4 = originalPositionBallRight4
                            })
                            withAnimation(.easeOut(duration: 0.2)) {
                                progressBallLeft5 = originalPositionOfBallLeft4
                                progressBallLeft2 = 0
//                                progressBallLeft3 = originalPositionOfBallLeft2
                                progressBallLeft4 = originalPositionOfBallLeft1
                                progressBallLeft1 = originalPositionOfBallLeft2

                                progressBallRight1 = originalPositionBallRight2//1 - tiLeChieuRong1HatSoVoiQuangDuong
                                progressBallRight2 = originalPositionBallRight3
                                progressBallRight3 = originalPositionBallRight4
                                progressBallRight4 = originalPositionOfBallLeft5
                            }
                        }
                    }
            )
        }
    }

    // Hàm tính điểm trên đường cong
//    func pointOnQuadBezier(start: CGPoint, control: CGPoint, end: CGPoint, t: CGFloat) -> CGPoint {
//        let x = pow(1 - t, 2) * start.x
//            + 2 * (1 - t) * t * control.x
//            + pow(t, 2) * end.x
//        let y = pow(1 - t, 2) * start.y
//            + 2 * (1 - t) * t * control.y
//            + pow(t, 2) * end.y
//        return CGPoint(x: x, y: y)
//    }
}

struct BezierMovingCircle: AnimatableModifier {
    var t: CGFloat
    let start: CGPoint
    let control: CGPoint
    let end: CGPoint

    var animatableData: CGFloat {
        get { t }
        set { t = newValue }
    }

    func body(content: Content) -> some View {
        content
            .frame(width: 40, height: 40)
            .position(pointOnQuadBezier(start: start, control: control, end: end, t: t))
            
    }

    func pointOnQuadBezier(start: CGPoint, control: CGPoint, end: CGPoint, t: CGFloat) -> CGPoint {
        let x = pow(1 - t, 2) * start.x
            + 2 * (1 - t) * t * control.x
            + pow(t, 2) * end.x
        let y = pow(1 - t, 2) * start.y
            + 2 * (1 - t) * t * control.y
            + pow(t, 2) * end.y
        return CGPoint(x: x, y: y)
    }
}

#Preview {
    ArcAnimationView()
}
