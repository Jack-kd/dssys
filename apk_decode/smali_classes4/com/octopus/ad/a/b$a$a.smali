.class public final Lcom/octopus/ad/a/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/b$a;
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

.field private e:Ljava/lang/String;


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
.method public a(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/a/b$a;
    .locals 3

    .line 2
    new-instance v0, Lcom/octopus/ad/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/a/b$a;-><init>(Lcom/octopus/ad/a/b$1;)V

    .line 3
    iget-wide v1, p0, Lcom/octopus/ad/a/b$a$a;->d:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/a/b$a;->a(Lcom/octopus/ad/a/b$a;J)J

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/a/b$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$a;->a(Lcom/octopus/ad/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/a/b$a$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$a;->b(Lcom/octopus/ad/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/octopus/ad/a/b$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$a;->c(Lcom/octopus/ad/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/a/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$a;->d(Lcom/octopus/ad/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$a$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
