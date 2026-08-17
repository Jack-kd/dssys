.class public Lcom/umeng/analytics/pro/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/cp;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/umeng/analytics/pro/cv;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/umeng/analytics/pro/cv;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/cv;->a:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/umeng/analytics/pro/cv;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iget-object v1, p0, Lcom/umeng/analytics/pro/cv;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/umeng/analytics/pro/da;->a(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    iget-object v1, p0, Lcom/umeng/analytics/pro/cv;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/umeng/analytics/pro/da;->a(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    cmp-long v1, v3, v5

    .line 37
    .line 38
    if-ltz v1, :cond_1

    .line 39
    .line 40
    cmp-long v1, v3, v7

    .line 41
    .line 42
    if-gtz v1, :cond_1

    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    return v0

    .line 46
    :cond_2
    :goto_0
    return v2

    .line 47
    :catchall_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cv;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public c()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
