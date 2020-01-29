package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PoohDao;

@Service //@Component + service ��� : controller�� db�� �߰�����
public class ShopService_pr {
	
	@Autowired //�� �����̳ʾ��� ��ü�� �ڷ����� PostDao�� ���� ���� ->@service
	private PoohDao poohDao;

	public void po_addr_insert(Postaddr postaddr, String emailid) {
		System.out.println(postaddr);
		System.out.println(emailid);
		poohDao.po_addr_insert(postaddr, emailid);
	}
	
	// emailid ��ȸ
	public User getEmailid(String emailid) {
		return poohDao.selectEmailid(emailid);
	}
	
	// ����� ���
	public List<Postaddr> postList(String emailid) {
		return poohDao.postList(emailid);
	}

	public int postListCnt(String id) {
		System.out.println(id);
		return poohDao.postListCnt(id);
	}
}
