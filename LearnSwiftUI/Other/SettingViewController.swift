//
//  SettingViewController.swift
//  KinhQuranF2
//
//  Created by Chien ND on 29/8/25.
//
import UIKit
import StoreKit
import Foundation

class SettingViewController: MyBaseViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var locationName: String = ""
    
    var sectionData: [[SettingItems]] = [[.language, .location, .rate, .feedback, .shareApp],
                                  [.privacy, /*.GDPR,*/ .checkUpdate],
                                  [/*.managerSubsciption,*/ .restorePurchase]]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func setupNavigation() {
        super.setupNavigation()
        navTitle.text = "asdasfdsfsdf"
    }
    
    func setupTableView() {
        tableView.register(UINib(nibName: "SettingTableViewCell", bundle: .main), forCellReuseIdentifier: "SettingTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.sectionFooterHeight = UITableView.automaticDimension
        tableView.showsVerticalScrollIndicator = false
    }
    
//    deinit {
//        print("SettingViewController deinit")
//    }

    func bindViewModel() {
    }
}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        cell.setup(data: sectionData[indexPath.section][indexPath.row], subTitle: locationName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch sectionData[indexPath.section][indexPath.row] {
        case .language: break
//            viewModel.route.trigger(.chooseLanguage())
        case .location:
            break
        case .rate:
            if let scene = UIApplication.shared.connectedScenes
                .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
        case .feedback:
            guard let mailURL = URL(string: "mailto:admin@android.vn") else { return }
            UIApplication.shared.open(mailURL)
        case .shareApp:
            guard let url = URL(string: "https://apps.apple.com/vn/app/id6749953222") else { return }
            let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
            activityVC.popoverPresentationController?.sourceView = view // iPad support
            present(activityVC, animated: true, completion: nil)
        case .privacy:
            guard let url = URL(string: "https://sites.google.com/view/pp-cartoon-me-ai/home") else { return }
            UIApplication.shared.open(url)
        case .GDPR:
            break
        case .checkUpdate:
            guard let url = URL(string: "https://apps.apple.com/vn/app/id6749953222") else { return }
            UIApplication.shared.open( url )
        case .managerSubsciption:
            break
        case .restorePurchase: break
//            Task {
//                LoadingView.show()
//                try? await AVNIAAIAPShare.restorePurchases()
//                LoadingView.hide()
//            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard section == 0 else {
            let view = UIView(frame: CGRect(origin: .zero, size: CGSize(width: tableView.bounds.width, height: 76)))
            view.backgroundColor = .red
            return view
        }
       guard  let header: HeaderSetting = Bundle.main.loadNibNamed("HeaderSetting", owner: nil)?.first as? HeaderSetting else { return nil }
        let gesture = UITapGestureRecognizer()
        header.addGestureRecognizer(gesture)
//        gesture.rx.event
//            .withUnretained(self)
//            .subscribe(onNext: {owner, _ in
//                guard !AVNIAAIAPShare.getPremium() else { return }
//                owner.viewModel.route.trigger(.iap)
//            }).disposed(by: disposeBag)
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? UITableView.automaticDimension : CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard section == sectionData.count - 1 else { return nil }
        let view = UIView()
        
        let lbVersion = UILabel()
        lbVersion.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        lbVersion.textColor = .black
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            lbVersion.text = "LocalizedService.shared.text.version(version)"
        } else {
            lbVersion.text = "LocalizedService.shared.text.version()"
        }
        
        let imgHeart = UIImageView(image: .tasbihBall1)
        
        let lbTeam = UILabel()
        lbTeam.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        lbTeam.textColor = .black
        lbTeam.text = "Amobear Team"
        
        let stack = UIStackView(arrangedSubviews: [lbVersion,imgHeart,lbTeam])
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 4
        
        view.addSubview(stack)
//        stack.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(20)
//            make.center.equalToSuperview()
//        }
        
        return view
    }
    
}

enum SettingItems: CaseIterable {
    case language
    case location
    case rate
    case feedback
    case shareApp
    case privacy
    case GDPR
    case checkUpdate
    case managerSubsciption
    case restorePurchase
    
    var title: String {
        switch self {
        case .language:
            return "LocalizedService.shared.text.language()"
        case .location:
            return "LocalizedService.shared.text.location()"
        case .rate:
            return "LocalizedService.shared.text.rate_us()"
        case .feedback:
            return "LocalizedService.shared.text.feedback()"
        case .shareApp:
            return "LocalizedService.shared.text.share_app()"
        case .privacy:
            return "LocalizedService.shared.text.privacy_policy()"
        case .GDPR:
            return "GDPR"
        case .checkUpdate:
            return "LocalizedService.shared.text.check_update()"
        case .managerSubsciption:
            return "LocalizedService.shared.text.manager_supsctiption()"
        case .restorePurchase:
            return "LocalizedService.shared.text.restore_purchase()"
        }
    }
    
    var icon: UIImage {
        switch self {
        case .language:
            return .tasbihBall1
        case .location:
            return .tasbihBall1
        case .rate:
            return .tasbihBall1
        case .feedback:
            return .tasbihBall1
        case .shareApp:
            return .tasbihBall1
        case .privacy:
            return .tasbihBall1
        case .GDPR:
            return .tasbihBall1
        case .checkUpdate:
            return .tasbihBall1
        case .managerSubsciption:
            return .tasbihBall1
        case .restorePurchase:
            return .tasbihBall1
        }
    }
}


class MyBaseViewController: UIViewController {
    var navTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .darkGray
        return label
    }()
    
//    var disposeBag = DisposeBag()
    
    lazy var backButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(image: .tasbihBall1, style: .plain, target: self, action: nil)
//        btn.rx.tap
//            .withUnretained(self)
//            .subscribe(onNext: { owner, _ in
//                owner.navigationController?.popViewController(animated: true)
//            }).disposed(by: disposeBag)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAction()
        setupNavigation()
    }
    
    func setupNavigation() {
        navigationItem.titleView = navTitle
        navigationItem.leftBarButtonItem = backButton
    }
    
    func setupAction() {}
}
