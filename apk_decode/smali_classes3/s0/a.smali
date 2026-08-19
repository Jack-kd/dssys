.class public final synthetic Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ls0/b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/a;->b:Ls0/b;

    iput-object p2, p0, Ls0/a;->c:Ljava/lang/String;

    iput-object p3, p0, Ls0/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/a;->b:Ls0/b;

    iget-object v1, p0, Ls0/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ls0/a;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ls0/b;->a(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
