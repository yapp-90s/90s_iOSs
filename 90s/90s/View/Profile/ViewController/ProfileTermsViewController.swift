//
//  ProfileTermsViewController.swift
//  90s
//
//  Created by 성다연 on 2021/07/02.
//

import UIKit
import SnapKit

final class ProfileTermsViewController: BaseViewController {
    
    private let titleLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .boldSystemFont(ofSize: 14)
        label.text = "[이용약관]"
        label.textAlignment = .center
        return label
    }()
    
    private let textView : UITextView = {
        let textView = UITextView(frame: .zero)
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
        setUpTextView()
    }
    
    private func setUpSubviews(){
        navigationItem.title = "약관 개인정보 처리방침"
        
        view.addSubview(titleLabel)
        view.addSubview(textView)
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(37)
            $0.centerX.equalToSuperview()
        }
        
        textView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(22)
            $0.left.equalTo(18)
            $0.right.equalTo(-18)
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    private func setUpTextView() {
        textView.text = """
        제1장 총칙

        제 1 조 (목적)
        이 약관은 브로큰스튜디오(이하 "회사")가 제공하는 어플리케이션 관련서비스 (이하 "서비스")를 이용함에 있어 회원과 회사간의 권리, 의무, 책임사항 등의 모든 이용조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다.

        제 2 조 (용어의 정의)
        이 약관에서 사용하는 용어의 정의는 다음과 같습니다.

        ①"회원" : 사이트에 접속하여 이 약관에 동의하고, ID(고유번호)와 비밀번호를 발급 받은 고객.
        ②"비회원" : 회원가입을 하지 않은 서비스 이용자.
        ③"비밀번호" : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 영문자와 숫자의 조합으로, 하나의 전화번호에 하나의 ID만 발급, 이용 가능.
        ④"서비스 중지" : 정상 이용 중 회사가 정한 일정한 요건에 따라 일정기간 동안 서비스의 제공을 중지하는 것
        ⑤"나의 앨범" : 회원의 사진을 어플리케이션상의 특정 공간에서 일정기간 동안 보관 및 관리하는 어플리케이션 서비스.

        제 3 조 (이용약관의 효력 및 변경)
        ①이 약관의 내용은 어플리케이션 화면에 게시하거나 기타의 방법으로 회원에게 공시하고, 이에 동의한 회원이 서비스에 가입함으로써 효력이 발생합니다.
        ②회사는 필요하다고 인정되는 경우 이 약관을 변경할 수 있으며, 약관이 변경된 경우에는 지체 없이 1항과 같은 방법으로 공시합니다. 다만, 이용자의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 15일전에 공시합니다.
        ③이용자는 변경된 약관 사항에 동의하지 않으면 서비스 이용을 중단하고 이용 계약을 해지할 수 있습니다.

        제 4 조 (약관 외 준칙)
        이 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.



        제2장 서비스 이용 계약

        제 1 조 (이용 계약의 성립)
        ①이용 계약은 이용자의 이용 신청에 대한 회사의 이용 승낙과 이용자의 약관 내용에 대한 동의로 성립됩니다.
        ②이용을 위해 회원에 가입하여 서비스를 이용하고자 하는 희망자는 회사에서 요청하는 개인 신상 정보를 제공해야 합니다.

        제 2 조 (이용신청)
        ①아이디
        ②이름
        ③비밀번호
        ④주소
        ⑤전화번호
        ⑥E-mail주소
        ⑦기타 회사가 필요하다고 인정하는 사항

        제 3 조 (이용신청의 승낙)
        회사는 제2장 제2조에서 정한 사항을 정확히 기재하여 이용 신청한 고객에 대하여 서비스 이용 신청을 승낙합니다.

        제 4 조 (이용신청에 대한 승낙의 제한)
        회사는 다음 각 호에 해당하는 신청에 대하여는 이를 승낙하지 않을 수 있습니다.

        ①기술상 서비스 제공이 불가능한 경우
        ②다른 사람의 명의사용 등 이용자 등록 시 허위 신청의 경우
        ③이용자 등록사항을 허위로 기재 하였거나 허위서류를 첨부하여 신청했을 경우
        ④사회의 안녕 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 경우
        기타 회사가 정한 이용신청 요건이 만족되지 않았을 경우 회원의 자격에 따라 서비스 이용이 제한되거나 변동될 수 있습니다.



        제3장 서비스 이용

        제 1 조 (서비스의 이용개시)
        ①회사는 회원의 이용 신청을 승낙한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다.
        ②회사의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에 공시하거나 회원에게 이를 통지합니다.

        제 2 조 (서비스의 이용시간)
        ①서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 회사의 업무 상이나 기술상의 이유로 서비스가 일시 중지될 수 있고, 또한 운영 상의 목적으로 회사가 정한 기간에는 서비스가 일시 중지될 수 있습니다. 이러한 경우 회사는 사전 또는 사후에 이를 공지합니다.
        ②회사는 서비스를 일정 범위로 분할하여 각 범위별로 이용 가능한 시간을 별도로 정할 수 있으며 이 경우 그 내용을 공지합니다.

        제 3 조 (서비스의 변경 및 중지)
        ①회사는 변경될 서비스의 내용 및 제공일자를 제4장 제4조 2항에서 정한 방법으로 회원에게 통지하고 서비스를 변경하여 제공할 수 있습니다.
        ②회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
        1.서비스용 설비의 보수 등 공사로 인한 부득이한 경우
        2.회원이 회사의 영업활동을 방해하는 경우
        3.정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우
        4.서비스 제공업자와의 계약 종료 등과 같은 회사의 제반 사정으로 서비스를 유지할 수 없는 경우
        5.기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우
        ③제2항에 의한 서비스 중단의 경우에는 회사가 제4장 제4조 2항에서 정한 방법으로 이용자에게 통지합니다. 다만, 회사가 통제할 수 없는 사유로 인한 서비스의 중단(운영자의 고의, 과실이 없는 디스크 장애, 시스템 다운 등)으로 인하여 사전 통지가 불가능한 경우에는 그러하지 아니합니다.
        ④회사는 서비스의 변경, 중지로 발생하는 문제에 대해서는 어떠한 책임도 지지 않습니다.

        제 4 조 (게시물 또는 내용물의 삭제)
        회사는 회원이 공유하거나 등록하는 서비스 내의 내용물(회원간 전달 포함)이 다음 각 호에 해당한다고 판단되는 경우 사전 통지 없이 삭제할 수 있으며, 이에 대해 회사는 어떠한 책임도 지지 않습니다.

        ①회사, 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
        ②공공질서 및 미풍양속에 위반되는 내용인 경우
        ③범죄적 행위에 결부된다고 인정되는 내용인 경우
        ④회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
        ⑤불건전한 자료일 경우
        ⑥기타 관계법령 및 회사의 지침, 서비스 이용 목적 등에 위반된다고 판단되는 경우

        제 5 조 (회원의 사진주문)
        ①회원은 자신이 촬영한 사진, 편집한 사진 등 소유권이 자신에게 있는 사진에 한해서 주문할 수 있습니다.
        ②공공질서 및 미풍양속에 위반되는 사진이거나 저작권 또는 초상권에 문제가 있는 사진을 주문한 경우에는 이로 인해 발생되는 문제의 모든 책임은 회원에게 있습니다.

        제 6 조 (대금 결제)
        ①상품을 구입할 때 사용할 수 있는 결제수단에는 계좌이체가 있습니다.
        ②회사는 회원이 결제 수단을 안심하고 사용할 수 있도록 최선의 노력을 다합니다.

        제 6 조 (구매 신청 변경 및 취소)
        사진 인화 전 또는 제품 생산 전에 회원의 구매 신청 변경 및 취소 요청이 있을 때에는 지체 없이 그 요청에 따라 처리합니다. 그러나 사진과 포토북 제작 주문의 경우 ‘주문완료’ 상태 시부터 구매신청 변경 및 취소는 불가합니다.

        제 7 조 (서비스 제공의 중지)
        회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있으며 이로 인하여 이용자 또는 제3자가 입은 손해에 대하여는 배상하지 아니합니다.

        ①서비스용 설비의 보수 등 공사로 인한 부득이한 경우
        ②전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우
        ③기타 불가항력적 사유가 있는 경우


        제4장 배송 및 환불

        제 1 조 (배송)
        ①배송기간은 영업일을 기준으로 다음과 같습니다.
        - 일반 택배 : 서울, 경기 2 ~ 3주, 그 외 지역 2 ~ 5주
        ②공휴일 및 기타 휴무일에는 배송되지 않습니다.
        ③불가항력적인 사유 발생시 그 해당기간 동안은 배송소요 기간에서 제외됩니다.
        ④회사의 귀책사유가 아닌 우체국이나 배송처에 의한 배송의 지연 및 분실은 회사가 책임지지 않습니다.

        제 2 조 (환불, 반품, 교환)
        ①회사는 이용자가 구매 신청한 상품 또는 용역을 제공할 수 없을 때에는 그 사유를 이용자에게 통지하고 대금을 받은 경우에는 받은 날부터 3일 이내에 환불에 필요한 조치를 신속히 처리합니다
        ②다음 각 호의 경우에 이용자는 배송된 날로부터 3일 이내에 환급, 반품 및 교환 조치를 요구할 수 있습니다.
        1.배송된 상품이 주문 내용과 상이하거나 회사에서 제공한 정보와 상이할 경우
        2.배송된 상품이 파손, 손상되었거나 오염되었을 경우 (단, 회원의 귀책 사유에 의한 파손, 손상, 오염 등의 경우는 제외)
        3.약관에 표시된 배송기간 보다 늦게 배송된 경우
        ③회원이 제 2항에 따라 상품 구매 계약이 취소된 경우 이미 제공 받은 상품을 반환하여야 하며, 회사는 이미 지급 받은 상품의 대가를 상품 반환일 다음 영업일 이내에 송금 기타 방법으로 환불합니다.
        ④제2항에 따라 상품 구매가 취소된 경우 그 반환에 필요한 일체의 비용은 회사가 부담합니다. 단, 제2항 외에의 사유로 구매 계약을 취소하는 경우에는 회원이 배송 비용을 부담하여야 합니다


        제5장 계약당사자의 의무

        제 1 조 (회사의 의무)
        회사는 서비스 제공과 관련해서 알고 있는 회원의 신상정보를 본인의 승낙 없이 제 3자에게 누설, 배포하지 않습니다.

        단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.

        제 2 조 (회원의 의무)
        회원정보에 관한 모든 관리 책임은 회원에게 있습니다. 회원의 관리 소홀, 부정 사용 및 매매에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있으며 개인정보가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 통보해야 합니다.

        제 3 조 (회사의 의무)
        1. 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제 3자에게 제공할 수 없으며, 이에 대한 모든 책임은 회사가 집니다.

        다만, 다음의 경우에는 예외로 합니다.

        ①배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려 주는 경우
        ②통계작성 , 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
        ③도용방지를 위하여 본인확인에 필요한 경우
        ④법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우

        2. 회사가 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제 3자에 대한 정보제공 관련사항 (제공받는 자 , 제공목적 및 제공할 정보의 내용)등 정보통신망 정보통신망이용 촉진 등에 관한 법률 제 41조 제 2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

        3. 이용자는 언제든지 회사가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 회사는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.

        4. 회사 또는 그로부터 개인정보를 제공 받은 제3자는 개인정보의 수집목적 또는 제공 받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.



        제6장 계약 해지 및 이용 제한

        제 1 조 (계약 해지)
        회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 온라인을 통해 회사에 해지 신청을 하여야 합니다.

        제 2 조 (이용 제한 및 중지)
        회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.

        ①이름, 아이디 및 비밀번호를 도용한 경우
        ②서비스 운영을 고의로 방해한 경우
        ③가입한 이름이 실명이 아닌 경우
        ④같은 사용자가 다른 이름, 별명으로 이중등록을 한 경우
        ⑤공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우
        ⑥회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행하는 경우
        ⑦타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우
        ⑧제3자의 지적재산권을 침해하는 경우
        ⑨회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우
        ⑩구입한 상품의 대금, 기타 서비스 이용에 관련하여 회원이 부담하는 채무를 기일 내에 지급하지 않는 경우
        ⑪기타 회사가 정한 이용조건에 위반한 경우


        제7장 손해배상 및 기타

        제 1 조 (손해배상)
        ①회원이 본 약관의 규정을 위반함으로 인하여 회사에 손해가 발생하게 되는 경우, 이 약관을 위반한 회원은 회사에 발생하는 모든 손해를 배상하여야 합니다.
        ②회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책 시켜야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.
        ③회사는 서비스 이용과 관련하여 무료 서비스의 경우에 한하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다.
        제 2 조 (면책조항)
        회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.

        ①회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다
        ②회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.
        ③회사는 서비스 이용과 관련하여 무료 서비스의 경우에 한하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다.
        ④회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그밖에 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. 또한 회사는 회원이 사이트에 게재한 정보, 자료, 사실의 신뢰도 및 정확성 등 내용에 대하여는 책임을 지지 않습니다.
        ⑤회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.
        ⑥회사는 제휴사의 제품 및 서비스에 대해서는 책임을 지지 않습니다.
        제 3 조 (관할법원)
        서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 서울중앙지방법원을 관할 법원으로 합니다.

        부칙
        제 1조 (시행일자)이 약관은 2020년 05월 01일부터 시행됩니다.

        """
    }
}
