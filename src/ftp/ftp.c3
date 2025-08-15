module hookshot::ftp;

import std::time;
import std::net::tcp;
import std::collections::map;


bitstruct FtpServerFlags : char
{
	bool skip_epsv;
	bool mlst_supported;
	bool mfmt_supported;
	bool mdtm_supported;
	bool mdtm_can_write;
	bool use_pret;
}

bitstruct FtpDialOptionFlags : char
{
	bool explicit_tls;
	bool diable_epsv;
	bool disable_utf8;
	bool disable_mlsd;
	bool writing_mdtm;
	bool force_list_hidden;
}

struct FtpConnection
{
	FtpDialOptions     			options;
	TcpSocket       			socket;
	String          			host;

	HashMap { String, String }	server_features;
	FtpServerFlags				server_flags;
}

struct FtpDialOptions
{
	FtpDialOptionFlags	client_flags;
}

struct FtpDataConnection
{
	TcpSocket		socket;
	FtpConnection	connection;
	bool			is_closed;
}
alias FtpResponse = FtpDataConnection;

struct FtpListEntry
{
	String				name;
	String				target;   // symlink target
	FtpListEntryType	type;
	ulong				size;
	DateTime			time;
}

enum FtpTransferType : int (String identifier)
{
	BINARY = "I",
	ASCII = "A",
}

enum FtpListEntryType : int
{
	FILE,
	FOLDER,
	LINK,
}
