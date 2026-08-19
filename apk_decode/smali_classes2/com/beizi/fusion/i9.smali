.class public Lcom/beizi/fusion/i9;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/beizi/fusion/h9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/h9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/beizi/fusion/i9;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/i9;->b:Lcom/beizi/fusion/h9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    :catch_0
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/beizi/fusion/g9;
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/i9;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/beizi/fusion/model/RequestInfo;->isInit:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/i9;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/fusion/model/RequestInfo;->init()Lcom/beizi/fusion/model/RequestInfo;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    array-length v2, p1

    if-lez v2, :cond_1

    .line 5
    aget-object p1, p1, v1

    goto :goto_1

    .line 6
    :cond_1
    const-string p1, "aHR0cDovL3Nkay5iZWl6aS5iaXovdjQvYXBpL3Nkay9jZi9wP2FwcElkPV9fQVBQSURfXyZwYWNrYWdlTmFtZT1fX1BBQ0tBR0VOQU1FX18maW5zdGFsbFRpbWU9X19JTlNUQUxMVElNRV9fJnVwZGF0ZVRpbWU9X19VUERBVEVUSU1FX18mbm93VGltZT1fX05PV1RJTUVfXyZhcHBWZXJzaW9uPV9fQVBQVkVSU0lPTl9fJmFwcFZlcnNpb25Db2RlPV9fQVBQVkVSU0lPTkNPREVfXyZzZGtWZXJzaW9uPV9fU0RLVkVSU0lPTl9fJlVzZXJBZ2VudD1fX1VTRVJBR0VOVF9fJnNka1VJRD1fX1NES1VJRF9fJmlkZmE9X19JREZBX18maWRmdj1fX0lERlZfXyZvcz1fX09TX18mcGxhdGZvcm09X19QTEFURk9STV9fJmRldlR5cGU9X19ERVZUWVBFX18mYnJhbmQ9X19CUkFORF9fJm1vZGVsPV9fTU9ERUxfXyZyZXNvbHV0aW9uPV9fUkVTT0xVVElPTl9fJnNjcmVlblNpemU9X19TQ1JFRU5TSVpFX18mbGFuZ3VhZ2U9X19MQU5HVUFHRV9fJmRlbnNpdHk9X19ERU5TSVRZX18mcm9vdD1fX1JPT1RfXyZuZXQ9X19ORVRfXyZpc3A9X19JU1BfXyZiYXR0ZXJ5PV9fQkFUVEVSWV9fJmRldmVsb3Blck1vZGU9X19ERVZFTE9QRVJNT0RFX18maXNVc2I9X19JU1VTQl9fJmlzRGVidWdBcGs9X19JU0RFQlVHQVBLX18maXNEZWJ1Z0Nvbm5lY3RlZD1fX0lTREVCVUdDT05ORUNURURfXyZkZWJ1Z1N5c3RlbT1fX0RFQlVHU1lTVEVNX18maXNXaWZpUHJveHk9X19JU1dJRklQUk9YWV9fJmlzQmx1ZXRvb3RoPV9fSVNCTFVFVE9PVEhfXyZpc0NhbWVyYT1fX0lTQ0FNRVJBX18maXNMb2NrU2NyZWVuPV9fSVNMT0NLU0NSRUVOX18mbmVpZ2hib3JpbmdMYWM9X19ORUlHSEJPUklOR0xBQ19fJmlzVnBuPV9fSVNWUE5fXyZpc1NpbXVsYXRvcj1fX0lTU0lNVUxBVE9SX18mY29uZmlnVmVyc2lvbj1fX0NPTkZJR1ZFUlNJT05fXyZjb25maWd1cmF0b3JDb25maWdWZXJzaW9uPV9fQ09ORklHVVJBVE9SQ09ORklHVkVSU0lPTl9fJm1lc3NlbmdlckNvbmZpZ1ZlcnNpb249X19NRVNTRU5HRVJDT05GSUdWRVJTSU9OX18mYmFubmVyRXhjdXRvckZvckxpZVlpbmdDb25maWdWZXJzaW9uPV9fQkFOTkVSRVhDVVRPUkZPUkxJRVlJTkdDT05GSUdWRVJTSU9OX18maHJDb25maWdWZXJzaW9uPV9fSFJDT05GSUdWRVJTSU9OX18mbWFuYWdlckNvbmZpZ1ZlcnNpb249X19NQU5BR0VSQ09ORklHVkVSU0lPTl9fJmxvZ1ZlcnNpb249X19MT0dWRVJTSU9OX18mZXZlbnRUaW1lPV9fRVZFTlRUSU1FX18mdXBsb2FkdGltZT1fX1VQTE9BRFRJTUVfXyZTZXNzaW9uSUQ9X19TRVNTSU9OSURfXyZldmVudElEPV9fRVZFTlRJRF9fJmV2ZW50Q29kZT1fX0VWRU5UQ09ERV9fJmFkVHlwZT1fX0FEVFlQRV9fJnJlc2VydmVUaW1lPV9fUkVTRVJWRVRJTUVfXyZhZHhJRD1fX0FEWElEX18mYWRQb3NpdGlvbklkPV9fQURQT1NJVElPTklEX18mT0FJRD1fX09BSURfXyZHQUlEPV9fR0FJRF9fJl9fRVJSSU5GT19fJmFwcFN0YXJ0PV9fQVBQU1RBUlRfXyZhcHBJbml0PV9fQVBQU0RLSU5JVF9fJmFwcFNwbGFzaFJlcXVlc3Q9X19BUFBTUExBU0hSRVFVRVNUX18="

    invoke-static {p1}, Lcom/beizi/fusion/h3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getTransferProtocol()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    const-string v2, "http:"

    const-string v3, "https:"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_3
    :goto_1
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 11
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v2, p0, Lcom/beizi/fusion/i9;->a:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/beizi/fusion/ro;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/beizi/fusion/v8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/beizi/fusion/tg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/beizi/fusion/j2;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 17
    invoke-static {v1, p1}, Lcom/beizi/fusion/o9;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_4

    .line 21
    iget-object p1, p0, Lcom/beizi/fusion/i9;->a:Landroid/content/Context;

    const-string v2, "lastUpdateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/beizi/fusion/go;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "{}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 24
    new-instance v1, Lcom/beizi/fusion/g9;

    iget-object v2, p0, Lcom/beizi/fusion/i9;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/beizi/fusion/g9;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 25
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 26
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 27
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_5
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/i9;->doInBackground([Ljava/lang/String;)Lcom/beizi/fusion/g9;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/beizi/fusion/g9;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/beizi/fusion/g9;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/i9;->b:Lcom/beizi/fusion/h9;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/h9;->a(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/i9;->b:Lcom/beizi/fusion/h9;

    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    .line 5
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/h9;->a(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/beizi/fusion/g9;

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/i9;->onPostExecute(Lcom/beizi/fusion/g9;)V

    return-void
.end method
