.class public abstract Lcom/beizi/fusion/pa;
.super Lcom/beizi/fusion/gb;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/gb;-><init>(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    const-string p1, "101,1001"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/pa;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/fm;Ljava/lang/String;Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/s5;
    .locals 1

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/beizi/fusion/gb;->a(Lcom/beizi/fusion/fm;Ljava/lang/String;Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/s5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/pa;->c:Ljava/lang/String;

    const-string p2, "Accept-Encrypt"

    invoke-virtual {v0, p2, p1}, Lcom/beizi/fusion/s5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/beizi/fusion/gb;->a(Lcom/beizi/fusion/fm;Ljava/lang/String;Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/s5;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/pa;->c:Ljava/lang/String;

    return-void
.end method
