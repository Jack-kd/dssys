.class public Lcom/sigmob/sdk/base/i;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/sigmob/sdk/base/i;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/i;->a:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/i;->c:Z

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "age_restricted_status"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sigmob/sdk/base/i;->b:I

    const-string v2, "user_age"

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sigmob/sdk/base/i;->d:I

    const-string v2, "consent_status"

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sigmob/sdk/base/i;->g:I

    const-string v2, "gdpr_region"

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/i;->f:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/sigmob/sdk/base/i;
    .locals 3

    .line 1
    const-class v0, Lcom/sigmob/sdk/base/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/base/i;->e:Lcom/sigmob/sdk/base/i;

    if-nez v1, :cond_0

    const-class v1, Lcom/sigmob/sdk/base/i;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/sigmob/sdk/base/i;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/i;-><init>()V

    sput-object v2, Lcom/sigmob/sdk/base/i;->e:Lcom/sigmob/sdk/base/i;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sigmob/sdk/base/i;->e:Lcom/sigmob/sdk/base/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/i;->d:I

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user_age"

    iget v2, p0, Lcom/sigmob/sdk/base/i;->d:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .line 3
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gdpr_region"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/i;->f:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->g()I

    move-result p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->h()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(IZ)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/i;->c:Z

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->b(Z)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/i;->a:Z

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->a(Z)V

    iget p1, p0, Lcom/sigmob/sdk/base/i;->b:I

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->b(I)V

    iget p1, p0, Lcom/sigmob/sdk/base/i;->d:I

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->a(I)V

    :cond_1
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyManager -> setAdult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/i;->a:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/base/i;->d:I

    return v0
.end method

.method public b(IZ)V
    .locals 4

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/i;->b:I

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "age_restricted_status"

    iget v2, p0, Lcom/sigmob/sdk/base/i;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->b(I)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/i;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/i;->h:Ljava/lang/Boolean;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyManager -> setPersonalized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/i;->c:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/ad;->b(Z)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/base/i;->b:I

    return v0
.end method

.method public c(IZ)V
    .locals 3

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/i;->g:I

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "consent_status"

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->g()I

    move-result p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->h()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/common/ad;->a(IZ)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/i;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/i;->c:Z

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/i;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/i;->c:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/i;->g:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/i;->f:Z

    return v0
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/i;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
