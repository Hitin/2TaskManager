import React, { useEffect, useState } from 'react';

import PropTypes from 'prop-types';

import IconButton from '@material-ui/core/IconButton';
import SystemUpdateAltIcon from '@material-ui/icons/SystemUpdateAlt';

import useStyles from './useStyles';

const ColumnHeader = ({ column, onLoadMore }) => {
  const styles = useStyles();

  const {
    id,
    title,
    cards,
    meta: { totalCount, currentPage },
  } = column;

  const count = cards.length;
  const handleLoadMore = () => {
    onLoadMore(id, currentPage + 1);
  };

  return (
    <div className={styles.root}>
      <div className={styles.title}>
        <b>{title}</b> ({count}/{totalCount || '…'})
      </div>
      {count !== totalCount && (
        <div className={styles.actions}>
          <IconButton aria-label="Load more" onClick={() => handleLoadMore()}>
            <SystemUpdateAltIcon fontSize="small" />
          </IconButton>
        </div>
      )}
    </div>
  );
};

ColumnHeader.propTypes = {
  onLoadMore: PropTypes.func.isRequired,
  column: PropTypes.shape({
    id: PropTypes.string.isRequired,
    title: PropTypes.string.isRequired,
    meta: PropTypes.shape({
      totalCount: PropTypes.number,
      currentPage: PropTypes.number,
    }),
  }).isRequired,
};

export default ColumnHeader;
