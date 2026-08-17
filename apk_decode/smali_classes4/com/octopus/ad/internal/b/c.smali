.class public Lcom/octopus/ad/internal/b/c;
.super Lcom/octopus/ad/internal/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/IBidding;
.implements Lcom/octopus/ad/internal/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/b/c$a;
    }
.end annotation


# instance fields
.field public b:Lcom/octopus/ad/internal/c;

.field private c:Lcom/octopus/ad/NativeAdListener;

.field private d:Lcom/octopus/ad/internal/b/c$a;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/octopus/ad/internal/d;

.field private i:I

.field private j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/internal/p;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/c;->o:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/c;->p:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c;->g:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/octopus/ad/internal/b/c;->k:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/octopus/ad/internal/c/b;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/octopus/ad/internal/c/s;->a(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/octopus/ad/internal/c/m;->a(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/octopus/ad/internal/d;

    .line 35
    .line 36
    invoke-static {}, Lcom/octopus/ad/internal/c/p;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, p1, v1}, Lcom/octopus/ad/internal/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/d;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/d;->a(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 55
    .line 56
    invoke-virtual {p1, p3}, Lcom/octopus/ad/internal/d;->a(Lcom/octopus/ad/internal/p;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/octopus/ad/internal/c;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/c;-><init>(Lcom/octopus/ad/internal/a;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c;->b:Lcom/octopus/ad/internal/c;

    .line 65
    .line 66
    const/4 p2, -0x1

    .line 67
    invoke-virtual {p1, p2, p4}, Lcom/octopus/ad/internal/c;->a(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lcom/octopus/ad/internal/b/c$a;

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-direct {p1, p0, p2}, Lcom/octopus/ad/internal/b/c$a;-><init>(Lcom/octopus/ad/internal/b/c;Lcom/octopus/ad/internal/b/c$1;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/c$a;

    .line 77
    .line 78
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/internal/b/c;->n:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/internal/b/c;->c:Lcom/octopus/ad/NativeAdListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/c;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/c;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/c;->o:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/internal/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    return-object p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/b/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/b/c;->n:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/b/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/b/c;->m:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/c;->e:Z

    return p0
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/c;->f:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/octopus/ad/internal/b/c;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 6
    sput-wide p1, Lcom/octopus/ad/internal/q;->y:J

    .line 7
    iput-wide p1, p0, Lcom/octopus/ad/internal/b/c;->m:J

    return-void
.end method

.method public a(Lcom/octopus/ad/NativeAdListener;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c;->c:Lcom/octopus/ad/NativeAdListener;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->d(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->r()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/octopus/ad/internal/b/a$a;)Z
    .locals 2

    .line 10
    iget-boolean p1, p0, Lcom/octopus/ad/internal/b/c;->p:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lcom/octopus/ad/internal/c/f;->l:Ljava/lang/String;

    const-string v1, "Still loading last nativead ad , won\'t load a new ad"

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/c;->k()V

    .line 13
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->b:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    .line 15
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->b:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->c()V

    .line 16
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->b:Lcom/octopus/ad/internal/c;

    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/c;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/c;->p:Z

    return p1

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/c$a;

    if-eqz p1, :cond_2

    const v1, 0x13880

    .line 19
    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/b/c$a;->a(I)V

    :cond_2
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/b/c;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->p()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/octopus/ad/internal/b/c;->i:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/c;->o:Z

    return v0
.end method

.method public getMediaType()Lcom/octopus/ad/internal/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->q()Lcom/octopus/ad/internal/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/octopus/ad/internal/b/c;->n:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-wide v2, p0, Lcom/octopus/ad/internal/b/c;->m:J

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public j()Lcom/octopus/ad/internal/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->h:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()Lcom/octopus/ad/internal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c$a;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/b/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void

    .line 21
    :goto_0
    const-string p2, "OctopusAd"

    .line 22
    .line 23
    const-string p3, "A Throwable Caught"

    .line 24
    .line 25
    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public sendWinNotice(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/e;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void

    .line 18
    :goto_0
    const-string v0, "OctopusAd"

    .line 19
    .line 20
    const-string v1, "A Throwable Caught"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
