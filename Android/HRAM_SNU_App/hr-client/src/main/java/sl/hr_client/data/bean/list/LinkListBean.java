package sl.hr_client.data.bean.list;

import java.util.List;

import sl.hr_client.data.bean.LinkBean;

/**
 * Created by Administrator on 2017/4/24.
 */

public class LinkListBean {
    private boolean isLastPage;

    public boolean isLastPage() {
        return isLastPage;
    }

    public void setLastPage(boolean lastPage) {
        isLastPage = lastPage;
    }

    private List<LinkBean> resultList;

    public List<LinkBean> getResultList() {
        return resultList;
    }

    public void setResultList(List<LinkBean> resultList) {
        this.resultList = resultList;
    }
}
