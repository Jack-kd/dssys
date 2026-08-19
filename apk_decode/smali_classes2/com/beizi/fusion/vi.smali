.class public Lcom/beizi/fusion/vi;
.super Lcom/beizi/fusion/n3;
.source "SourceFile"


# instance fields
.field private Z:I

.field private a0:Z

.field private b0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/j3;JI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/beizi/fusion/n3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/j3;J)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    iput p6, p1, Lcom/beizi/fusion/vi;->Z:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public R()V
    .locals 2

    .line 1
    sget-object v0, Lcom/beizi/fusion/n3;->X:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/model/AppEventId;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/AppEventId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/n3;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AppEventId;->setAppNativeRequest(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/n3;->b:Lcom/beizi/fusion/events/EventBean;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "5"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public Y()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/n3;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/e2;->s()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    :cond_0
    const/4 v0, -0x1

    .line 17
    return v0
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/e2;)Lcom/beizi/fusion/e2;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    iget-boolean v0, p0, Lcom/beizi/fusion/n3;->T:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/beizi/fusion/w2;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/fusion/n3;->a:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/beizi/fusion/n3;->d:Ljava/lang/String;

    .line 14
    .line 15
    move-wide v5, v4

    .line 16
    iget-wide v3, p0, Lcom/beizi/fusion/n3;->e:J

    .line 17
    .line 18
    move-object v9, p0

    .line 19
    move-object v8, p1

    .line 20
    move-object v7, p3

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/w2;-><init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/n3;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    move-wide v5, v4

    .line 26
    invoke-static {}, Lcom/beizi/fusion/ro;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string v0, "BEIZI"

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object p5

    .line 46
    :cond_2
    :goto_0
    new-instance v0, Lcom/beizi/fusion/g4;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/beizi/fusion/n3;->a:Landroid/content/Context;

    .line 49
    .line 50
    iget-wide v2, p0, Lcom/beizi/fusion/n3;->e:J

    .line 51
    .line 52
    iget v9, p0, Lcom/beizi/fusion/vi;->Z:I

    .line 53
    .line 54
    iget-boolean v10, p0, Lcom/beizi/fusion/vi;->a0:Z

    .line 55
    .line 56
    iget-boolean v11, p0, Lcom/beizi/fusion/vi;->b0:Z

    .line 57
    .line 58
    move-object v8, p0

    .line 59
    move-object v7, p1

    .line 60
    move-wide v4, v5

    .line 61
    move-object v6, p3

    .line 62
    invoke-direct/range {v0 .. v11}, Lcom/beizi/fusion/g4;-><init>(Landroid/content/Context;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/n3;IZZ)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/n3;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/beizi/fusion/vi;->a0:Z

    .line 2
    .line 3
    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/n3;->a(Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/beizi/fusion/vi;->b0:Z

    .line 2
    .line 3
    return-void
.end method

.method public c0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/n3;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
