.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATA_COLUMN:I = 0x0

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field private static final KEYWORD_COLUMNS:[Ljava/lang/String; = null

.field private static final NAME_COLUMN:I = 0x0

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field private static final STARRED_COLUMN:I = 0x1

.field public static final SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "starred"

    aput-object v1, v0, v3

    sput-object v0, Lmiui/provider/ExtraTelephony;->COLUMNS:[Ljava/lang/String;

    .line 529
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    sput-object v0, Lmiui/provider/ExtraTelephony;->KEYWORD_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    return-void
.end method

.method public static checkFirewallForMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "address"
    .parameter "body"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 854
    const/4 v2, 0x0

    .line 856
    .local v2, insertFw:Z
    const/4 v3, 0x0

    .line 857
    .local v3, reason:I
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v7}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 858
    .local v4, ret:I
    if-ne v4, v6, :cond_2

    .line 859
    const/4 v2, 0x1

    .line 860
    const/4 v3, 0x4

    .line 871
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 872
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 874
    .local v0, act:I
    if-eq v0, v8, :cond_1

    const/high16 v7, 0x1

    if-ne v3, v7, :cond_5

    .line 877
    :cond_1
    const/4 v7, 0x4

    if-ne v3, v7, :cond_4

    .line 878
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u76f4\u63a5\u5220\u9664\u9ed1\u540d\u5355\u6210\u5458\u77ed\u4fe1."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 887
    .local v5, values:Landroid/content/ContentValues;
    const-string/jumbo v7, "number"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 889
    const-string/jumbo v7, "type"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v7, "data1"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string/jumbo v7, "reason"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 899
    .end local v0           #act:I
    .end local v4           #ret:I
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    return v6

    .line 862
    .restart local v4       #ret:I
    :cond_2
    if-ne v4, v8, :cond_3

    .line 863
    const/4 v2, 0x1

    .line 864
    const/16 v3, 0x104

    goto :goto_0

    .line 866
    :cond_3
    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    .line 867
    const/4 v2, 0x1

    .line 868
    const/high16 v3, 0x1

    goto :goto_0

    .line 879
    .restart local v0       #act:I
    :cond_4
    const/16 v7, 0x104

    if-ne v3, v7, :cond_6

    .line 880
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u76f4\u63a5\u5220\u9664\u767d\u540d\u5355\u6210\u5458\u77ed\u4fe1."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 896
    .end local v0           #act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 897
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ExtraTelephony"

    const-string/jumbo v7, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 882
    .restart local v0       #act:I
    .restart local v4       #ret:I
    :cond_6
    :try_start_1
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u77ed\u4fe1\u88ab\u8fc7\u6ee4."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static checkFirewallForSms(Landroid/content/Context;[[B)Z
    .locals 8
    .parameter "context"
    .parameter "pdus"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 910
    if-eqz p1, :cond_2

    :try_start_0
    array-length v7, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v7, v5, :cond_2

    .line 911
    const/4 v0, 0x0

    .line 914
    .local v0, address:Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, p1, v7

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 919
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ge v4, v7, :cond_1

    .line 922
    :try_start_3
    aget-object v7, p1, v4

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 920
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 915
    .end local v1           #body:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/NullPointerException;
    move v5, v6

    .line 938
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    return v5

    .line 930
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/StringBuilder;
    .restart local v4       #i:I
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 933
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lmiui/provider/ExtraTelephony;->checkFirewallForMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v5

    goto :goto_2

    .line 935
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #body:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :catch_1
    move-exception v2

    .line 936
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ExtraTelephony"

    const-string/jumbo v7, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move v5, v6

    .line 938
    goto :goto_2

    .line 923
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/StringBuilder;
    .restart local v4       #i:I
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public static checkFirewallForWapPush(Landroid/content/Context;[B)Z
    .locals 8
    .parameter "context"
    .parameter "pduData"

    .prologue
    const/4 v5, 0x0

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v3, p1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 1001
    .local v3, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    .line 1002
    .local v4, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v4, :cond_1

    .line 1017
    .end local v3           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_0
    :goto_0
    return v5

    .line 1006
    .restart local v3       #parser:Lcom/google/android/mms/pdu/PduParser;
    .restart local v4       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 1007
    .local v2, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 1011
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, address:Ljava/lang/String;
    invoke-static {p0, v0}, Lmiui/provider/ExtraTelephony;->checkFirewallForWapPushAddress(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1014
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v1

    .line 1015
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ExtraTelephony"

    const-string/jumbo v7, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkFirewallForWapPushAddress(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 949
    if-eqz p1, :cond_4

    .line 950
    const/4 v2, 0x0

    .line 951
    .local v2, insertFw:Z
    const/4 v3, 0x0

    .line 953
    .local v3, reason:I
    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 954
    .local v4, ret:I
    if-ne v4, v6, :cond_2

    .line 955
    const/4 v2, 0x1

    .line 956
    const/4 v3, 0x6

    .line 963
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 964
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 966
    .local v0, act:I
    if-ne v0, v7, :cond_4

    .line 967
    const/4 v7, 0x6

    if-ne v3, v7, :cond_3

    .line 968
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u76f4\u63a5\u5220\u9664\u9ed1\u540d\u5355\u6210\u5458\u5f69\u4fe1."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_1
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 974
    .local v5, values:Landroid/content/ContentValues;
    const-string/jumbo v7, "number"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    const-string/jumbo v7, "type"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v7, "data1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x60c016d

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string/jumbo v7, "reason"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 989
    .end local v0           #act:I
    .end local v2           #insertFw:Z
    .end local v3           #reason:I
    .end local v4           #ret:I
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    return v6

    .line 958
    .restart local v2       #insertFw:Z
    .restart local v3       #reason:I
    .restart local v4       #ret:I
    :cond_2
    if-ne v4, v7, :cond_0

    .line 959
    const/4 v2, 0x1

    .line 960
    const/16 v3, 0x106

    goto :goto_0

    .line 969
    .restart local v0       #act:I
    :cond_3
    const/16 v7, 0x106

    if-ne v3, v7, :cond_1

    .line 970
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u76f4\u63a5\u5220\u9664\u767d\u540d\u5355\u6210\u5458\u5f69\u4fe1."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 986
    .end local v0           #act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 987
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ExtraTelephony"

    const-string/jumbo v7, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #insertFw:Z
    .end local v3           #reason:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static getCallAct(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 533
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_call_act"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSmsAct(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 541
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_sms_act"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAntiPrivateEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 638
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anti_private_call"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isAntiStrangerEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 628
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anti_stranger_call"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBlacklistEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 658
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallLogNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v10

    .line 831
    :cond_0
    :goto_0
    return v7

    .line 814
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v8

    .line 815
    .local v8, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "normalized_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v10, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "type"

    aput-object v5, v2, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 821
    .local v7, hasConnection:Z
    if-eqz v6, :cond_0

    .line 822
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 824
    .local v9, type:I
    const/4 v0, 0x3

    if-eq v9, v0, :cond_2

    .line 825
    const/4 v7, 0x1

    .line 829
    .end local v9           #type:I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static isFilterSmsEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 648
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "filter_stranger_sms"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFirewallEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 618
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "firewall_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 572
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    .line 588
    :cond_1
    :goto_0
    return v7

    .line 576
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 580
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 581
    .local v7, result:Z
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    const/4 v7, 0x1

    .line 587
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 584
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static isInFirewallTimeLimit(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 675
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "context should not be null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "firewall_time_limit_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 680
    .local v2, isEnabled:Z
    :goto_0
    if-nez v2, :cond_3

    .line 696
    :cond_1
    :goto_1
    return v5

    .end local v2           #isEnabled:Z
    :cond_2
    move v2, v6

    .line 677
    goto :goto_0

    .line 682
    .restart local v2       #isEnabled:Z
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "firewall_start_time"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 685
    .local v4, startTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "firewall_end_time"

    const/16 v9, 0x1a4

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 688
    .local v1, endTime:I
    if-ne v4, v1, :cond_4

    move v5, v6

    goto :goto_1

    .line 690
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 691
    .local v0, c:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int v3, v7, v8

    .line 692
    .local v3, now:I
    if-ge v4, v1, :cond_6

    .line 693
    if-gt v4, v3, :cond_5

    if-le v3, v1, :cond_1

    :cond_5
    move v5, v6

    goto :goto_1

    .line 696
    :cond_6
    if-ge v3, v4, :cond_7

    if-gt v3, v1, :cond_8

    :cond_7
    move v6, v5

    :cond_8
    move v5, v6

    goto :goto_1
.end method

.method private static isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 596
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    .line 611
    :cond_1
    :goto_0
    return v7

    .line 601
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 605
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 606
    .local v7, result:Z
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    const/4 v7, 0x1

    .line 610
    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static isSkipInCallLogForFirewall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 839
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "firewall_hide_calllog"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStranger(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 549
    const/4 v7, 0x1

    .line 550
    .local v7, stranger:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 554
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const/4 v7, 0x0

    .line 561
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_1
    return v7
.end method

.method private static isWhitelistEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 668
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "whitelist_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 701
    invoke-static {p0, p1, v0, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "phone"
    .parameter "smsBody"

    .prologue
    const/4 v1, 0x1

    .line 705
    invoke-static {p0, p1, v1, v1}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    .line 707
    .local v0, result:I
    if-nez v0, :cond_0

    .line 708
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraTelephony;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 711
    :cond_0
    return v0
.end method

.method public static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1
    .parameter "context"
    .parameter "phone"
    .parameter "stranger"

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 6
    .parameter "context"
    .parameter "phone"
    .parameter "stranger"
    .parameter "queryContact"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 726
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isFirewallEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 760
    :cond_0
    :goto_0
    return v1

    .line 728
    :cond_1
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isInFirewallTimeLimit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 734
    goto :goto_0

    .line 737
    :cond_2
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isWhitelistEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 741
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incoming_call_limit_setting"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 744
    .local v0, limitSetting:I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    move v1, v3

    .line 745
    goto :goto_0

    .line 747
    :cond_4
    if-ne v0, v2, :cond_0

    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    .line 749
    goto :goto_0

    .line 751
    :cond_5
    if-eqz p3, :cond_6

    .line 752
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isStranger(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    .line 755
    :cond_6
    if-eqz p2, :cond_0

    move v1, v3

    .line 756
    goto :goto_0
.end method

.method private static shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "phone"
    .parameter "smsBody"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v10

    .line 766
    :cond_1
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isFilterSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isStranger(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 769
    .local v9, stranger:Z
    if-eqz v9, :cond_0

    .line 773
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isCallLogNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lmiui/provider/ExtraTelephony;->KEYWORD_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 785
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 786
    .local v8, matched:Z
    if-eqz v7, :cond_4

    .line 787
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 788
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, Keyword:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    const/4 v8, 0x1

    .line 796
    .end local v6           #Keyword:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_4
    if-nez v8, :cond_5

    .line 800
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraGuard;->checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 803
    :cond_5
    if-eqz v8, :cond_6

    const/4 v0, 0x3

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_6
    move v0, v10

    goto :goto_1
.end method
