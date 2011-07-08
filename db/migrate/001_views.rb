migration 1, :views do

  up do
    execute <<-SQL
    create view postfix_mailboxes as 
      select id||'@'||domain as userid, home||'/' as mailbox from users
      union all
      select domain as userid, 'dummy' as mailbox from transports
    SQL
    execute <<-SQL
    create view postfix_virtual as 
      select id||'@'||domain as userid, id||'@'||domain as address from users
      union all
      select user_id as userid, address from virtuals
    SQL
    execute <<-SQL
    create view mailusers as
      select id||'@'||domain as userid, uid, gid, password, home, mail from users
  end

  down do
  end

end
