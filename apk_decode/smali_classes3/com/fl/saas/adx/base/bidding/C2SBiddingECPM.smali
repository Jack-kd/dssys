.class public interface abstract Lcom/fl/saas/adx/base/bidding/C2SBiddingECPM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs getC2SBiddingECPM([Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    array-length v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "FLSDK-C2SBiddingECPM"

    if-nez v1, :cond_0

    :try_start_1
    const-string p0, "C2S Bid Ad but ad Object is empty"

    invoke-static {v2, p0}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "C2S Bid Ad but all fail:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    instance-of v6, v5, Lcom/fl/saas/adx/base/bidding/C2SBiddingECPM;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/fl/saas/adx/base/bidding/C2SBiddingECPM;

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/fl/saas/adx/base/bidding/C2SBiddingECPM;->getC2SBiddingECPM()I

    move-result p0

    return p0

    :cond_4
    const-string p0, "C2S Bid Ad but ad Object is null"

    invoke-static {v2, p0}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :goto_2
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public abstract getC2SBiddingECPM()I
.end method
