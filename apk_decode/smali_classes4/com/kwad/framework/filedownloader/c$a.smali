.class final Lcom/kwad/framework/filedownloader/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final azr:Lcom/kwad/framework/filedownloader/c;


# direct methods
.method private constructor <init>(Lcom/kwad/framework/filedownloader/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/c$a;->azr:Lcom/kwad/framework/filedownloader/c;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/kwad/framework/filedownloader/c;->a(Lcom/kwad/framework/filedownloader/c;Z)Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/framework/filedownloader/c;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/c$a;-><init>(Lcom/kwad/framework/filedownloader/c;)V

    return-void
.end method


# virtual methods
.method public final AX()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/c$a;->azr:Lcom/kwad/framework/filedownloader/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/c;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "add the task[%d] to the queue"

    .line 20
    .line 21
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/c$a;->azr:Lcom/kwad/framework/filedownloader/c;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/h;->c(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 31
    .line 32
    .line 33
    return v0
.end method
