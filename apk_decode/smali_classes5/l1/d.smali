.class public final synthetic Ll1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/utils/anr/AnrHandler;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/utils/anr/AnrHandler;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/d;->b:Lcom/varbto/utils/anr/AnrHandler;

    iput-object p2, p0, Ll1/d;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll1/d;->b:Lcom/varbto/utils/anr/AnrHandler;

    iget-object v1, p0, Ll1/d;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/varbto/utils/anr/AnrHandler;->a(Ljava/io/File;)V

    return-void
.end method
