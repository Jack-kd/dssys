.class public Lcom/octopus/ad/c/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/c/c;


# instance fields
.field private a:Lcom/octopus/ad/c/d/c;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/c/d/b;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/c/d/b;->c:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/octopus/ad/c/d/b;->b:Z

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    new-instance v1, Lcom/octopus/ad/c/d/c;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/octopus/ad/c/d/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/octopus/ad/c/d/b;->a:Lcom/octopus/ad/c/d/c;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v0}, Lcom/octopus/ad/c/d/c;->a(Landroid/content/Context;Lcom/octopus/ad/c/d/c$a;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    move p1, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    iput-boolean p1, p0, Lcom/octopus/ad/c/d/b;->c:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/octopus/ad/c/d/b;->b:Z

    .line 29
    .line 30
    :cond_2
    iget-boolean p1, p0, Lcom/octopus/ad/c/d/b;->c:Z

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/octopus/ad/c/d/b;->a:Lcom/octopus/ad/c/d/c;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/octopus/ad/c/d/c;->b()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/octopus/ad/c/d/b;->a:Lcom/octopus/ad/c/d/c;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/octopus/ad/c/d/c;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_3
    return-object v0
.end method
