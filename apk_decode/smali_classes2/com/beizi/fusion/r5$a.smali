.class public final Lcom/beizi/fusion/r5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/r5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/beizi/fusion/n7;

.field private b:Lcom/beizi/fusion/m7;

.field private c:Lcom/beizi/fusion/q5;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(I)Lcom/beizi/fusion/r5$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/beizi/fusion/r5$a;->e:I

    return-object p0
.end method

.method public a(Lcom/beizi/fusion/m7;)Lcom/beizi/fusion/r5$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/r5$a;->b:Lcom/beizi/fusion/m7;

    return-object p0
.end method

.method public a(Lcom/beizi/fusion/n7;)Lcom/beizi/fusion/r5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/r5$a;->a:Lcom/beizi/fusion/n7;

    return-object p0
.end method

.method public a(Lcom/beizi/fusion/q5;)Lcom/beizi/fusion/r5$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/r5$a;->c:Lcom/beizi/fusion/q5;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/fusion/r5$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/r5$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/beizi/fusion/r5;
    .locals 2

    .line 6
    new-instance v0, Lcom/beizi/fusion/r5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beizi/fusion/r5;-><init>(Lcom/beizi/fusion/o5;)V

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/r5$a;->c:Lcom/beizi/fusion/q5;

    invoke-static {v0, v1}, Lcom/beizi/fusion/r5;->a(Lcom/beizi/fusion/r5;Lcom/beizi/fusion/q5;)Lcom/beizi/fusion/q5;

    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/r5$a;->a:Lcom/beizi/fusion/n7;

    invoke-static {v0, v1}, Lcom/beizi/fusion/r5;->a(Lcom/beizi/fusion/r5;Lcom/beizi/fusion/n7;)Lcom/beizi/fusion/n7;

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/r5$a;->b:Lcom/beizi/fusion/m7;

    invoke-static {v0, v1}, Lcom/beizi/fusion/r5;->a(Lcom/beizi/fusion/r5;Lcom/beizi/fusion/m7;)Lcom/beizi/fusion/m7;

    .line 10
    iget-boolean v1, p0, Lcom/beizi/fusion/r5$a;->d:Z

    invoke-static {v0, v1}, Lcom/beizi/fusion/r5;->a(Lcom/beizi/fusion/r5;Z)Z

    .line 11
    iget v1, p0, Lcom/beizi/fusion/r5$a;->e:I

    invoke-static {v0, v1}, Lcom/beizi/fusion/r5;->a(Lcom/beizi/fusion/r5;I)I

    return-object v0
.end method
