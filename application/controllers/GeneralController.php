<?php
//������ģ���ļ��е��ú�������
class GeneralController extends Controller
{
    public function getname($args)
    {
        $userquery = $this->db->query("select * from liaoliao_user where email='" . $args[0] . "'");
        $user      = $userquery->fetch();
        return $user['username'];
    }
    public function getavatar($args)
    {
        $userquery = $this->db->query("select * from liaoliao_user where email='" . $args[0] . "'");
        $user      = $userquery->fetch();
        return $user['avatar'];
    }
    public function getnamebyuid($args)
    {
        $userquery = $this->db->query("select * from liaoliao_user where id='" . $args[0] . "'");
        $user      = $userquery->fetch();
        return $user['username'];
    }
    public function getavatarbyuid($args)
    {
        $userquery = $this->db->query("select * from liaoliao_user where id='" . $args[0] . "'");
        $user      = $userquery->fetch();
        return $user['avatar'];
    }
    public function gettagname($args)
    {
        $tagquery = $this->db->query("select * from liaoliao_tags where id='" . $args[0] . "'");
        $tag      = $tagquery->fetch();
        return $tag['name'];
    }
    public function getuserstatus($args)
    {
        $userquery = $this->db->query("select * from liaoliao_user where email='" . $args[0] . "'");
        $user      = $userquery->fetch();
        return ($user['status'] == '-1' ? true : false);
    }
}
?>