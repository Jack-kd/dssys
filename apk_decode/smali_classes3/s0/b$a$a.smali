.class public Ls0/b$a$a;
.super Lu0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0/b$a;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls0/b$a;


# direct methods
.method public constructor <init>(Ls0/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/b$a$a;->b:Ls0/b$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lu0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ls0/b$a$a;->b:Ls0/b$a;

    .line 2
    .line 3
    iget-object v0, v0, Ls0/b$a;->a:Ls0/b;

    .line 4
    .line 5
    invoke-static {v0}, Ls0/b;->b(Ls0/b;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Ls0/b$a$a;->b:Ls0/b$a;

    .line 15
    .line 16
    iget-object v0, v0, Ls0/b$a;->a:Ls0/b;

    .line 17
    .line 18
    invoke-static {v0}, Ls0/b;->b(Ls0/b;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Ls0/b$a$a;->b:Ls0/b$a;

    .line 31
    .line 32
    iget-object v0, v0, Ls0/b$a;->a:Ls0/b;

    .line 33
    .line 34
    invoke-static {v0}, Ls0/b;->b(Ls0/b;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;

    .line 53
    .line 54
    new-instance v2, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "id"

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->getId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v3, "name"

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Ls0/b$a$a;->b:Ls0/b$a;

    .line 82
    .line 83
    iget-object v0, v0, Ls0/b$a;->a:Ls0/b;

    .line 84
    .line 85
    const-string v1, "onDevices"

    .line 86
    .line 87
    invoke-static {v0, v1, p1}, Ls0/b;->i(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
