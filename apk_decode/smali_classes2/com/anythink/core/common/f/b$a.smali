.class public final Lcom/anythink/core/common/f/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "adx_offer_tracking"

.field public static final b:Ljava/lang/String; = "placement_id"

.field public static final c:Ljava/lang/String; = "dsp_id"

.field public static final d:Ljava/lang/String; = "offer_id"

.field public static final e:Ljava/lang/String; = "tk_type"

.field public static final f:Ljava/lang/String; = "extra_info"

.field public static final g:Ljava/lang/String; = "create_time"

.field public static final h:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS adx_offer_tracking(placement_id TEXT ,dsp_id TEXT ,offer_id TEXT ,tk_type INTEGER ,extra_info TEXT ,create_time INTEGER)"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
