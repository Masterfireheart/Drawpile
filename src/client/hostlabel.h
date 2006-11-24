/*
   DrawPile - a collaborative drawing program.

   Copyright (C) 2006 Calle Laakkonen

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/
#ifndef HOSTLABEL_H
#define HOSTLABEL_H

#include <QLabel>

class QMenu;

namespace widgets {
//! Host address label
/**
 * This widget displayes the IP address of the host. It allows the user
 * to select the address with the mouse and copy it to the clipboard.
 */
class HostLabel : public QLabel
{
	Q_OBJECT
	public:
		HostLabel(QWidget *parent=0);

	public slots:
		//! Set the address
		void setAddress(const QString& address);
		//! Set message to indicate lack of connection with host
		void disconnect();
		//! Copy the address to clipboard
		void copyAddress();

	protected:
		void contextMenuEvent(QContextMenuEvent *event);

	private:
		QString address_;
		QMenu *menu_;
};

}

#endif

