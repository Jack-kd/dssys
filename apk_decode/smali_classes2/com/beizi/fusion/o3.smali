.class public abstract Lcom/beizi/fusion/o3;
.super Lcom/beizi/fusion/e2;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/b2;


# instance fields
.field protected U:Landroid/content/Context;

.field protected V:J

.field protected W:F

.field protected X:F

.field protected Y:Lcom/beizi/fusion/NativeUnifiedAdResponse;

.field protected Z:Landroid/widget/FrameLayout;

.field protected a0:Z

.field protected b0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/n3;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/e2;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/o3;->a0:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/o3;->b0:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/o3;->U:Landroid/content/Context;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/beizi/fusion/o3;->V:J

    .line 12
    .line 13
    iput-object p4, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 16
    .line 17
    iput p7, p0, Lcom/beizi/fusion/e2;->D:I

    .line 18
    .line 19
    iput-object p5, p0, Lcom/beizi/fusion/e2;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/beizi/fusion/vo;->h(Landroid/content/Context;)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/beizi/fusion/o3;->W:F

    .line 26
    .line 27
    invoke-static {p1}, Lcom/beizi/fusion/vo;->e(Landroid/content/Context;)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/beizi/fusion/o3;->X:F

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->C()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private a1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->C()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/o3;->x()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->f()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/e2;->g:Lcom/beizi/fusion/u5;

    .line 20
    .line 21
    sget-object v1, Lcom/beizi/fusion/u5;->a:Lcom/beizi/fusion/u5;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/beizi/fusion/o3;->d1()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/beizi/fusion/o3;->x()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget-object v1, Lcom/beizi/fusion/u5;->b:Lcom/beizi/fusion/u5;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/beizi/fusion/o3;->x()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method private d1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/o3$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/beizi/fusion/o3$a;-><init>(Lcom/beizi/fusion/o3;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/beizi/fusion/o3;->Y:Lcom/beizi/fusion/NativeUnifiedAdResponse;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->L0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/o3;->b1()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public B0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAppId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/beizi/fusion/e2;->h:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/beizi/fusion/e2;->i:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/beizi/fusion/e2;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/e2;->a:Lcom/beizi/fusion/lk;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/beizi/fusion/lk;->a()Lcom/beizi/fusion/s1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/beizi/fusion/e2;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/s1;->b(Ljava/lang/String;)Lcom/beizi/fusion/events/EventBean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->D()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/beizi/fusion/o3;->Y0()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public H0()V
    .locals 0

    return-void
.end method

.method public abstract N0()Ljava/lang/String;
.end method

.method public abstract O0()Landroid/view/ViewGroup;
.end method

.method public abstract P0()Ljava/lang/String;
.end method

.method public abstract Q0()Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;
.end method

.method public abstract R0()Ljava/lang/String;
.end method

.method public abstract S0()Ljava/lang/String;
.end method

.method public abstract T0()Ljava/util/List;
.end method

.method public abstract U0()Ljava/lang/String;
.end method

.method public abstract V0()I
.end method

.method public abstract W0()Ljava/lang/String;
.end method

.method public abstract X0()Landroid/view/View;
.end method

.method public abstract Y0()V
.end method

.method public abstract Z0()Z
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/util/List;)V
.end method

.method public abstract b1()V
.end method

.method public c1()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->W()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/o3;->a1()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    return-void
.end method

.method public h()Lcom/beizi/fusion/c2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->j:Lcom/beizi/fusion/c2;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/beizi/fusion/NativeUnifiedAdResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/o3;->Y:Lcom/beizi/fusion/NativeUnifiedAdResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract x()Ljava/lang/String;
.end method
