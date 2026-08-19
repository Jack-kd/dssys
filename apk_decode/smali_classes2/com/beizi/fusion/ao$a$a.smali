.class Lcom/beizi/fusion/ao$a$a;
.super Lcom/beizi/fusion/x8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/ao$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/beizi/fusion/ao$b;

.field final synthetic e:Lcom/beizi/fusion/ao$a;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/ao$a;ZZLcom/beizi/fusion/ao$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/ao$a$a;->e:Lcom/beizi/fusion/ao$a;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/beizi/fusion/ao$a$a;->d:Lcom/beizi/fusion/ao$b;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/beizi/fusion/x8;-><init>(ZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/ao$a$a;->d:Lcom/beizi/fusion/ao$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/ao$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public onPostExecute(Lcom/beizi/fusion/y8;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/beizi/fusion/y8;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/beizi/fusion/y8;->b()Lcom/beizi/fusion/k9;

    move-result-object p1

    sget-object v0, Lcom/beizi/fusion/k9;->a:Lcom/beizi/fusion/k9;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/ao$a$a;->d:Lcom/beizi/fusion/ao$b;

    iget v0, p1, Lcom/beizi/fusion/ao$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/beizi/fusion/ao$b;->b:I

    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/ao$a$a;->e:Lcom/beizi/fusion/ao$a;

    iget-object p1, p1, Lcom/beizi/fusion/ao$a;->b:Lcom/beizi/fusion/ao;

    invoke-static {p1}, Lcom/beizi/fusion/ao;->a(Lcom/beizi/fusion/ao;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/ao$a$a;->d:Lcom/beizi/fusion/ao$b;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/beizi/fusion/y8;

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/ao$a$a;->onPostExecute(Lcom/beizi/fusion/y8;)V

    return-void
.end method
