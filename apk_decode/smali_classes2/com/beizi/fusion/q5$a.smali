.class public final Lcom/beizi/fusion/q5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


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
.method public a(J)Lcom/beizi/fusion/q5$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/q5$a;->d:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/beizi/fusion/q5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/q5$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/beizi/fusion/q5;
    .locals 3

    .line 3
    new-instance v0, Lcom/beizi/fusion/q5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beizi/fusion/q5;-><init>(Lcom/beizi/fusion/o5;)V

    .line 4
    iget-object v1, p0, Lcom/beizi/fusion/q5$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/q5;->a(Lcom/beizi/fusion/q5;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/q5$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/q5;->b(Lcom/beizi/fusion/q5;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/beizi/fusion/q5$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/q5;->c(Lcom/beizi/fusion/q5;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-wide v1, p0, Lcom/beizi/fusion/q5$a;->d:J

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/q5;->a(Lcom/beizi/fusion/q5;J)J

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/beizi/fusion/q5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/q5$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/beizi/fusion/q5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/q5$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
