.class public final Lcom/anythink/core/common/f/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "ad_source_id"

.field public static final B:Ljava/lang/String; = "network_firm_id"

.field public static final C:Ljava/lang/String; = "progress"

.field public static final D:Ljava/lang/String; = "file_size"

.field public static final E:Ljava/lang/String; = "apk_redownload"

.field public static final F:Ljava/lang/String; = "apk_allow_install_in_bg"

.field public static final G:Ljava/lang/String; = "offer_cache_time"

.field public static final H:Ljava/lang/String; = "app_name"

.field public static final I:Ljava/lang/String; = "downloading_scene"

.field public static final J:Ljava/lang/String; = "recover_download_scene"

.field public static final K:Ljava/lang/String; = "download_failed_scene_list"

.field public static final L:Ljava/lang/String; = "dsp_id"

.field public static final M:Ljava/lang/String; = "action_offer_download_tk"

.field public static final N:Ljava/lang/String; = "app_desc"

.field public static final O:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS download_task(unique_id TEXT ,click_id TEXT ,request_id TEXT ,offer_id TEXT ,pkg_name TEXT ,url TEXT ,title TEXT ,deeplink_click_action TEXT ,icon_url TEXT ,deeplink_url TEXT ,file_path TEXT ,placement_id TEXT ,ad_source_id TEXT ,network_firm_id TEXT ,app_name TEXT ,download_failed_scene_list TEXT ,dsp_id TEXT ,action_offer_download_tk TEXT ,app_desc TEXT ,apk_verify INTEGER ,enable_use_webview_ua INTEGER ,download_type INTEGER ,notification_type INTEGER ,int_open_switch INTEGER ,int_open_time INTEGER ,offer_source_type INTEGER ,part_count INTEGER ,enable_part_download INTEGER ,download_start_timestamp INTEGER ,download_end_timestamp INTEGER ,status INTEGER ,is_upload_installed_agentevent INTEGER ,progress INTEGER ,file_size INTEGER ,apk_redownload INTEGER ,apk_allow_install_in_bg INTEGER ,offer_cache_time INTEGER ,downloading_scene INTEGER ,recover_download_scene INTEGER)"

.field public static final a:Ljava/lang/String; = "download_task"

.field public static final b:Ljava/lang/String; = "unique_id"

.field public static final c:Ljava/lang/String; = "click_id"

.field public static final d:Ljava/lang/String; = "request_id"

.field public static final e:Ljava/lang/String; = "offer_id"

.field public static final f:Ljava/lang/String; = "url"

.field public static final g:Ljava/lang/String; = "pkg_name"

.field public static final h:Ljava/lang/String; = "title"

.field public static final i:Ljava/lang/String; = "deeplink_click_action"

.field public static final j:Ljava/lang/String; = "apk_verify"

.field public static final k:Ljava/lang/String; = "enable_use_webview_ua"

.field public static final l:Ljava/lang/String; = "download_type"

.field public static final m:Ljava/lang/String; = "notification_type"

.field public static final n:Ljava/lang/String; = "int_open_switch"

.field public static final o:Ljava/lang/String; = "int_open_time"

.field public static final p:Ljava/lang/String; = "icon_url"

.field public static final q:Ljava/lang/String; = "deeplink_url"

.field public static final r:Ljava/lang/String; = "offer_source_type"

.field public static final s:Ljava/lang/String; = "file_path"

.field public static final t:Ljava/lang/String; = "part_count"

.field public static final u:Ljava/lang/String; = "enable_part_download"

.field public static final v:Ljava/lang/String; = "download_start_timestamp"

.field public static final w:Ljava/lang/String; = "download_end_timestamp"

.field public static final x:Ljava/lang/String; = "status"

.field public static final y:Ljava/lang/String; = "is_upload_installed_agentevent"

.field public static final z:Ljava/lang/String; = "placement_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
