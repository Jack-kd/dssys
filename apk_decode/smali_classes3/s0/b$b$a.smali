.class public Ls0/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0/b$b;->a(Lorg/fourthline/cling/android/AndroidUpnpService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls0/b$b;


# direct methods
.method public constructor <init>(Ls0/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/b$b$a;->a:Ls0/b$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ls0/b$b$a;->a:Ls0/b$b;

    .line 2
    .line 3
    iget-object p1, p1, Ls0/b$b;->d:Ls0/b;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1, v1}, Ls0/b;->h(Ls0/b;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "onPlayResult"

    .line 12
    .line 13
    invoke-static {p1, v1, v0}, Ls0/b;->i(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ls0/b$b$a;->a:Ls0/b$b;

    .line 2
    .line 3
    iget-object p1, p1, Ls0/b$b;->d:Ls0/b;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "DLNA_ERROR_"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {p1, v0, p2, p3}, Ls0/b;->h(Ls0/b;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string p3, "onPlayResult"

    .line 28
    .line 29
    invoke-static {p1, p3, p2}, Ls0/b;->i(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
